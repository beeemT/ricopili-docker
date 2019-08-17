FROM centos

LABEL authors="Benedikt Thoma"\
      description="This is a docker image of ricopili. It should be used in conjunction with docker-compose or a similar architecture."

RUN mkdir -p  /ricopili/{bin,deps,refs,log}

RUN yum install -y epel-release && \
    yum install -y libgomp perl bzip2 R mailx python2-pip python-devel perl-IO-Zlib less vim wget git htop pigz && \
    yum clean packages


RUN Rscript -e 'install.packages("rmeta", repos = "http://cran.us.r-project.org")'


#RUN pip install --upgrade pip --no-cache-dir
#RUN pip install --no-cache-dir --no-deps bitarray==0.8 nose numpy pandas==0.21 scipy pybedtools==0.7 pysam==0.15


#####################
#Ricopili-References#
#####################
#RUN cd /ricopili/refs && \
#    wget -nv https://personal.broadinstitute.org/sripke/share_links/ggAhKGdW4XNc0XFn4ZA19Cl3PpcWIs_1000GP_Phase3_sr_0517d_pop_EAS_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EAS.bed && \
#    wget -nv https://personal.broadinstitute.org/sripke/share_links/ggAhKGdW4XNc0XFn4ZA19Cl3PpcWIs_1000GP_Phase3_sr_0517d_pop_EAS_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EAS.bim && \
#    wget -nv https://personal.broadinstitute.org/sripke/share_links/ggAhKGdW4XNc0XFn4ZA19Cl3PpcWIs_1000GP_Phase3_sr_0517d_pop_EAS_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EAS.fam && \
#    wget -nv https://personal.broadinstitute.org/sripke/share_links/ouOIbn17POnccuiiFkZRIgasfPLpqL_1000GP_Phase3_sr_0517d_pop_EUR_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EUR.bed && \
#    wget -nv https://personal.broadinstitute.org/sripke/share_links/ouOIbn17POnccuiiFkZRIgasfPLpqL_1000GP_Phase3_sr_0517d_pop_EUR_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EUR.bim && \
#    wget -nv https://personal.broadinstitute.org/sripke/share_links/ouOIbn17POnccuiiFkZRIgasfPLpqL_1000GP_Phase3_sr_0517d_pop_EUR_chr23/ALL_v5a.20130502.chrX_1KG_0517.impute.plink.EUR.fam
#
#RUN curl --progress-bar -Lo /tmp/refs.tar.gz https://storage.googleapis.com/cloud-ricopili/reference-genotypes/1KG_ref_ricopili.tar.gz && \
#    tar zxvf /tmp/refs.tar.gz -C /ricopili/refs/ && \
#    rm -f /tmp/refs.tar.gz

#######################
#Ricopili-Dependencies#
#######################
RUN curl --progress-bar -Lo /tmp/deps.tgz  https://personal.broadinstitute.org/sripke/share_links/JeklRDhPD6FKm8Gnda7JsUOsMan2P2_Ricopili_Dependencies.1118b.tar.gz/Ricopili_Dependencies.1118b.tar.gz && \
    tar zxvf /tmp/deps.tgz -C /ricopili/deps/ && \
    chmod 755 -R /ricopili/deps/ && \
    rm -f /tmp/deps.tgz


RUN curl --progress-bar -Lo /tmp/Miniconda2-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-x86_64.sh && \
    sh /tmp/Miniconda2-latest-Linux-x86_64.sh -b -f -p /usr/local/ && \
    rm -f /tmp/Miniconda2-latest-Linux-x86_64.sh && \
    cd /ricopili/deps/ldsc/ && \
    conda env create --file environment.yml

###################
#Ricopili-Binaries#
###################

#Newest
RUN cd /tmp && \
    git clone https://github.com/beeemT/ricopili.git && \
    mv ./ricopili/bin/* /ricopili/bin/ && \
    chmod 755 /ricopili/bin/ && \
    rm -rf /tmp/ricopili

#Release v0.0.1
#RUN curl --progress-bar -Lo /tmp/bin.tgz https://github.com/Ripkelab/ricopili/archive/v0.0.1.tar.gz && \
#    tar zxvf /tmp/bin.tgz -C /ricopili/ && \
#    mv /ricopili/ricopili-0.0.1/bin/* /ricopili/bin/ && \
#    rm -rf /ricopili/ricopili-0.0.1 && \
#    chmod 755 /ricopili/bin/

##################
#Static Variables#
##################
ENV PATH /ricopili/deps/plink:/ricopili/bin:/ricopili/bin/pdfjam:$PATH
ENV rp_perlpackages /ricopili/deps/perl_modules/
ENV RPHOME /ricopili

####################
#Apply custom fixes#
####################
RUN mv /ricopili/deps/bcftools/resources/human_g1k_v37.fasta.fai /ricopili/deps/bcftools/resources/human_g1k_v37.fasta

######################
#Log Creation (loloc)#
######################
RUN cd /ricopili/log && \
    touch /ricopili/log/preimp_dir_info \
    /ricopili/log/impute_dir_info \
    /ricopili/log/pcaer_info \
    /ricopili/log/idtager_info \
    /ricopili/log/repqc2_info \
    /ricopili/log/areator_info \
    /ricopili/log/merge_caller_info \
    /ricopili/log/postimp_navi_info \
    /ricopili/log/reference_dir_info \
    /ricopili/log/test_info \
    /ricopili/log/clumper_info

########
#Config#
########
RUN curl -o /ricopili/ricopili.conf https://gist.githubusercontent.com/beeemT/1a87105b3527b7187ce48344f9e473c6/raw/34e20d7b50837dc7b446709c974fbcf2dbb54ead/ricopili.conf