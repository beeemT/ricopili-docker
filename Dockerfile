FROM centos

LABEL authors="Benedikt Thoma"\
      description="This is a docker image of ricopili. It should be used in conjunction with docker-compose or a similar architecture."

RUN yum install -y epel-release && \
    yum install -y libgomp perl bzip2 R mailx python2-pip python-devel perl-IO-Zlib less vim wget git htop && \
    yum clean packages


RUN Rscript -e 'install.packages("rmeta", repos = "http://cran.us.r-project.org")'


RUN pip install --upgrade pip --no-cache-dir
RUN pip install --no-cache-dir --no-deps bitarray==0.8 pandas==0.21 pybedtools==0.7 pysam==0.15


RUN curl --progress-bar -Lo /tmp/Miniconda2-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-x86_64.sh && \
    sh /tmp/Miniconda2-latest-Linux-x86_64.sh -b -f -p /usr/local/ && \
    rm -f /tmp/Miniconda2-latest-Linux-x86_64.sh


RUN mkdir -p  /ricopili/{rp_bin,rp_dep,rp_ref,rp_log}

#####################
#Ricopili-References#
#####################
RUN cd /ricopili/rp_ref && \
    wget -nv https://personal.broadinstitute.org/sripke/share_links/ggAhKGdW4XNc0XFn4ZA19Cl3PpcWIs_1000GP_Phase3_sr_0517d_pop_EAS_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EAS.bed && \
    wget -nv https://personal.broadinstitute.org/sripke/share_links/ggAhKGdW4XNc0XFn4ZA19Cl3PpcWIs_1000GP_Phase3_sr_0517d_pop_EAS_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EAS.bim && \
    wget -nv https://personal.broadinstitute.org/sripke/share_links/ggAhKGdW4XNc0XFn4ZA19Cl3PpcWIs_1000GP_Phase3_sr_0517d_pop_EAS_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EAS.fam && \
    wget -nv https://personal.broadinstitute.org/sripke/share_links/ouOIbn17POnccuiiFkZRIgasfPLpqL_1000GP_Phase3_sr_0517d_pop_EUR_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EUR.bed && \
    wget -nv https://personal.broadinstitute.org/sripke/share_links/ouOIbn17POnccuiiFkZRIgasfPLpqL_1000GP_Phase3_sr_0517d_pop_EUR_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EUR.bim && \
    wget -nv https://personal.broadinstitute.org/sripke/share_links/ouOIbn17POnccuiiFkZRIgasfPLpqL_1000GP_Phase3_sr_0517d_pop_EUR_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EUR.fam

RUN curl --progress-bar -Lo /tmp/rp_ref.tar.gz https://storage.googleapis.com/cloud-ricopili/reference-genotypes/1KG_ref_ricopili.tar.gz && \
    tar zxvf /tmp/rp_ref.tar.gz -C /ricopili/rp_ref/ && \
    rm -f /tmp/rp_ref.tar.gz

#######################
#Ricopili-Dependencies#
#######################
RUN curl --progress-bar -Lo /tmp/rp_dep.tgz  https://personal.broadinstitute.org/sripke/share_links/JeklRDhPD6FKm8Gnda7JsUOsMan2P2_Ricopili_Dependencies.1118b.tar.gz/Ricopili_Dependencies.1118b.tar.gz && \
    tar zxvf /tmp/rp_dep.tgz -C /ricopili/rp_dep/ && \
    chmod 755 /ricopili/rp_dep/ && \
    chmod 755 -R /ricopili/rp_dep/ && \
    cd /ricopili/rp_dep/ldsc/ && \
    conda env create --file environment.yml && \
    rm -f /tmp/rp_dep.tgz

###################
#Ricopili-Binaries#
###################

#Newest
RUN cd /tmp && \
    git clone https://github.com/beeemT/ricopili.git && \
    mv ./ricopili/rp_bin/* /ricopili/rp_bin/ && \
    chmod 755 /ricopili/rp_bin/ && \
    rm -rf /tmp/ricopili

#Release v0.0.1
#RUN curl --progress-bar -Lo /tmp/rp_bin.tgz https://github.com/Ripkelab/ricopili/archive/v0.0.1.tar.gz && \
#    tar zxvf /tmp/rp_bin.tgz -C /ricopili/ && \
#    mv /ricopili/ricopili-0.0.1/rp_bin/* /ricopili/rp_bin/ && \
#    rm -rf /ricopili/ricopili-0.0.1 && \
#    chmod 755 /ricopili/rp_bin/

########
#Config#
########
RUN curl -o /ricopili/ricopili.conf https://gist.githubusercontent.com/beeemT/1a87105b3527b7187ce48344f9e473c6/raw/34e20d7b50837dc7b446709c974fbcf2dbb54ead/ricopili.conf

##################
#Static Variables#
##################
ENV PATH /ricopili/rp_dep/plink:/ricopili/rp_bin:/ricopili/rp_bin/pdfjam:$PATH
ENV rp_perlpackages /ricopili/rp_dep/perl_modules/
ENV RPHOME /ricopili

####################
#Apply custom fixes#
####################
RUN mv /ricopili/rp_dep/bcftools/resources/human_g1k_v37.fasta.fai /ricopili/rp_dep/bcftools/resources/human_g1k_v37.fasta

######################
#Log Creation (loloc)#
######################
RUN cd /ricopili/rp_log && \
    touch test_info && \
    touch preimp_dir_info && \
    touch pcaer_info && \
    touch impute_dir_info