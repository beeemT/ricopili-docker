#!/bin/bash
mkdir /run/data/preimp
cd /run/data/preimp
FILE=/run/data/preimp/hapgen_sample3a.bed
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample3a.bed https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample3a.bed
fi
FILE=/run/data/preimp/hapgen_sample3a.bim
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample3a.bim https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample3a.bim
fi
FILE=/run/data/preimp/hapgen_sample3a.fam
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample3a.fam https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample3a.fam
fi
FILE=/run/data/preimp/hapgen_sample4b.bed
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample4b.bed https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample4b.bed
fi
FILE=/run/data/preimp/hapgen_sample4b.bim
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample4b.bim https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample4b.bim
fi
FILE=/run/data/preimp/hapgen_sample4b.fam
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample4b.fam https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample4b.fam
fi
FILE=/run/data/preimp/hapgen_sample5a.ph.bed
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample5a.ph.bed https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample5a.ph.bed
fi
FILE=/run/data/preimp/hapgen_sample5a.ph.bim
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample5a.ph.bim https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample5a.ph.bim
fi
FILE=/run/data/preimp/hapgen_sample5a.ph.fam
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/hapgen_sample5a.ph.fam https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/hapgen_sample5a.ph.fam
fi
FILE=/run/data/preimp/sim_sim1a_eur_RP_merge.miss.bed
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/sim_sim1a_eur_RP_merge.miss.bed https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/sim_sim1a_eur_sa_merge.miss.bed
fi
FILE=/run/data/preimp/sim_sim1a_eur_RP_merge.miss.bim
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/sim_sim1a_eur_RP_merge.miss.bim https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/sim_sim1a_eur_sa_merge.miss.bim
fi
FILE=/run/data/preimp/sim_sim1a_eur_RP_merge.miss.fam
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/sim_sim1a_eur_RP_merge.miss.fam https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/sim_sim1a_eur_sa_merge.miss.fam
fi
FILE=/run/data/preimp/sim_sim2a_eur_RP_merge.miss.bed
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/sim_sim2a_eur_RP_merge.miss.bed https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/sim_sim2a_eur_sa_merge.miss.bed
fi
FILE=/run/data/preimp/sim_sim2a_eur_RP_merge.miss.bim
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/sim_sim2a_eur_RP_merge.miss.bim https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/sim_sim2a_eur_sa_merge.miss.bim
fi
FILE=/run/data/preimp/sim_sim2a_eur_RP_merge.miss.fam
if [ ! -f "$FILE" ]; then
    curl --progress-bar -Lo /run/data/preimp/sim_sim2a_eur_RP_merge.miss.fam https://personal.broadinstitute.org/sawasthi/share_links/afABqiK7luSzPwFjag1g5ij8ySlabj_gwas-qcerrors.py/sim_sim2a_eur_sa_merge.miss.fam
fi

FILE=/run/data/preimp/preimp.done
if [ ! -f "$FILE" ]; then
    echo "###STUDYNAME: 5 alphanumeric characters, recommeded city or study abbreviation and wave, e.g. lond1, cloz2
###              please negotiate with PIs about this name
###BFILE:     bed-filename root, e.g. if you dataset is called YOURDATA.bed, then please use YOURDATA in this column
###QCCYCLE:   numeric indicating the rounds of quality controls you have already performed
###              this will be appended to the resulting files with -qc1 or -qc2
###EXCLUDE:   set 0 if you want this dataset being included in the preimp process
STUDYNAME	BFILE	QCCYCLE	EXCLUDE
hap3a	hapgen_sample3a	1	0
hap5a	hapgen_sample5a.ph	1	0
hap4a	hapgen_sample4b	1	0
hap1a	sim_sim1a_eur_RP_merge.miss	1	0
hap2a	sim_sim2a_eur_RP_merge.miss	1	0" > sim.names
    preimp_dir --dis sim --out hapgen_5cohorts --serial --sepa 24
    touch /run/data/preimp/preimp.done
fi

FILE=/run/data/pcaer/pcaer.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/pcaer
    cd /run/data/pcaer
    ln -s /run/data/preimp/qc/imputation/* .
    rm success_file -f
    rm README -f
    pcaer --prefercase --preferfam --out pca_hap1a sim_hap1a_eur_RP-qc1.bim --serial --sepa 24
    cd pcaer_pca_hap1a
    tar -xvzf pca_hap1a.menv.mds.tar.gz
    awk '$4<0.01' pca_hap1a.menv.mds > hap1a.eur.sample.txt
    plink --bfile sim_hap1a_eur_RP-qc1 --keep hap1a.eur.sample.txt --make-bed --out hap1a_only_eur
    touch /run/data/pcaer/pcaer.done
fi

FILE=/run/data/preimp2/preimp.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/preimp2
    cd /run/data/preimp2
    ln -s /run/data/pcaer/pcaer_pca_hap1a/hap1a_only_eur.[bf]* .
    echo "###STUDYNAME: 5 alphanumeric characters, recommeded city or study abbreviation and wave, e.g. lond1, cloz2
###              please negotiate with PIs about this name
###BFILE:     bed-filename root, e.g. if you dataset is called YOURDATA.bed, then please use YOURDATA in this column
###QCCYCLE:   numeric indicating the rounds of quality controls you have already performed
###              this will be appended to the resulting files with -qc1 or -qc2
###EXCLUDE:   set 0 if you want this dataset being included in the preimp process
STUDYNAME BFILE QCCYCLE EXCLUDE
hap1b	hap1a_only_eur	2	0" > sim.names
    preimp_dir --dis sim --out hap1a_eur --serial --sepa 24
    cd ./qc/imputation
    awk '$13>.01 || $14>.01 {print $1}' ../sim_hap1b_eur_RP-qc2.detres > snps.exclusion.list
    plink --bfile sim_hap1b_eur_RP-qc2 --exclude snps.exclusion.list --make-bed --out hap1b_snp.exc
    touch /run/data/preimp2/preimp.done
fi

FILE=/run/data/preimp3/preimp.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/preimp3
    cd /run/data/preimp3/
    ln -s /run/data/preimp2/qc/imputation/*snp.*.[bf]* .
    echo "###STUDYNAME: 5 alphanumeric characters, recommeded city or study abbreviation and wave, e.g. lond1, cloz2
###              please negotiate with PIs about this name
###BFILE:     bed-filename root, e.g. if you dataset is called YOURDATA.bed, then please use YOURDATA in this column
###QCCYCLE:   numeric indicating the rounds of quality controls you have already performed
###              this will be appended to the resulting files with -qc1 or -qc2
###EXCLUDE:   set 0 if you want this dataset being included in the preimp process
STUDYNAME BFILE QCCYCLE EXCLUDE
hap1c	hap1b_snp.exc	3	0" > sim.names
    preimp_dir --dis sim --out hap1b_SNP.ex --serial --sepa 24
    touch /run/data/preimp3/preimp.done
fi

FILE=/run/data/preimp4/preimp.done
if [ ! -f "$FILE" ]; then
    cd /run/data/preimp/qc/imputation
    mkdir ./plink_hap2a
    cd ./plink_hap2a
    ln -s /run/data/preimp/qc/imputation/sim_hap2a* .
    awk '$13>.01 || $14>.01 {print $1}' ../../sim_hap2a_eur_RP-qc1.detres > snps.exclusion.list
    plink --bfile sim_hap2a_eur_RP-qc1 --exclude snps.exclusion.list --make-bed --out hap2a_snp.exc
    mkdir /run/data/preimp4
    cd /run/data/preimp4
    ln -s /run/data/preimp/qc/imputation/plink_hap2a/hap2a*.[bf]* .
    echo "###STUDYNAME: 5 alphanumeric characters, recommeded city or study abbreviation and wave, e.g. lond1, cloz2
###              please negotiate with PIs about this name
###BFILE:     bed-filename root, e.g. if you dataset is called YOURDATA.bed, then please use YOURDATA in this column
###QCCYCLE:   numeric indicating the rounds of quality controls you have already performed
###              this will be appended to the resulting files with -qc1 or -qc2
###EXCLUDE:   set 0 if you want this dataset being included in the preimp process
STUDYNAME BFILE QCCYCLE EXCLUDE
hap2b	hap2a_snp.exc	2	0" > sim.names
    preimp_dir --dis sim --out hap2a_SNP.ex --serial --sepa 24
    touch /run/data/preimp4/preimp.done
fi

FILE=/run/data/pcaer2/pcaer.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/pcaer2
    cd /run/data/pcaer2
    ln -s /run/data/preimp/qc/imputation/sim_hap3a* .
    pcaer --prefercase --preferfam --out pca_hap3a sim_hap3a_eur_RP-qc1.bim --serial --sepa 24
    awk '$4<0.01' pca_hap3a.menv.mds > hap3a.eur.sample.txt
    plink --bfile sim_hap3a_eur_RP-qc1 --keep hap3a.eur.sample.txt --make-bed --out hap3a_only_eur
    touch /run/data/pcaer2/pcaer.done
fi

FILE=/run/data/preimp5/preimp.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/preimp5
    cd /run/data/preimp5
    ln -s /run/data/pcaer2/hap3a_only_eur.[bf]* .
    echo "###STUDYNAME: 5 alphanumeric characters, recommeded city or study abbreviation and wave, e.g. lond1, cloz2
###              please negotiate with PIs about this name
###BFILE:     bed-filename root, e.g. if you dataset is called YOURDATA.bed, then please use YOURDATA in this column
###QCCYCLE:   numeric indicating the rounds of quality controls you have already performed
###              this will be appended to the resulting files with -qc1 or -qc2
###EXCLUDE:   set 0 if you want this dataset being included in the preimp process
STUDYNAME BFILE QCCYCLE EXCLUDE
hap3b	hap3a_only_eur	2	0" > sim.names
    preimp_dir --dis sim --out hap3a_only_eur --serial --sepa 24
    touch /run/data/preimp5/preimp.done
fi

FILE=/run/data/impute/impute.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/impute
    cd /run/data/impute
    ln -s /run/data/preimp5/qc/imputation/sim_hap3b_eur_RP-qc2.[bf]* .
    ln -s /run/data/preimp4/qc/imputation/sim_hap2b_eur_RP-qc2.[bf]* .
    ln -s /run/data/preimp3/qc/imputation/sim_hap1c_eur_RP-qc3.[bf]* .
    ln -s /run/data/preimp/qc/imputation/sim_hap[45]* .
    impute_dirsub --refdir /ricopili/refs/1KG_ref --minilong --out hapgen_5cohort --serial --sepa 24
    touch /run/data/impute/impute.done
fi

FILE=/run/data/pcaer_post_imp/pcaer.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/pcaer_post_imp/
    cd /run/data/pcaer_post_imp/
    ln -s /run/data/impute/pcaer_sub/* .
    pcaer --prefercase --preferfam --out cobg_gw.hapgen_5cohort sim_hap1c_eur_RP-qc3.hg19.ch.fl.bgs sim_hap2b_eur_RP-qc2.hg19.ch.fl.bgs sim_hap3b_eur_RP-qc2.hg19.ch.fl.bgs sim_hap4a_eur_RP-qc1.hg19.ch.fl.bgs sim_hap5a_eur_RP-qc1.hg19.ch.fl.bgs --serial --sepa 24
    touch /run/data/pcaer_post_imp/pcaer.done
fi

FILE=/run/data/postimp/postimp.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/postimp/
    cd /run/data/postimp/
    ln -s /run/data/pcaer_post_imp/cobg_gw.hapgen_5cohort.menv.mds_cov .
    ln -s /run/data/impute/* .
    postimp_navi --out hapgen_5_cohorts --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4 --addout run_2a --serial --sepa 24
    touch /run/data/postimp/postimp.done
fi

FILE=/run/data/clump/clump.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/clump/
    cd /run/data/clump/
    ln -s /run/data/postimp/distribution/hapgen_5_cohorts_run_2a/daner_hapgen_5_cohorts_run_2a.gz .
    clump_nav3 --noindel --pfile daner_hapgen_5_cohorts_run_2a.gz --hq_f .05 --hq_i .9 --out daner_hapgen_5_cohorts_run_2a.gz --clu_p1 1.0 --clu_p2 1.0 --clu_window 500 --clu_r2 0.1 --refdir /ricopili/refs/1KG_ref/pop_EUR --serial --sepa 24
    touch /run/data/clump/clump.done
fi

FILE=/run/data/prs/postimp.done
if [ ! -f "$FILE" ]; then
    mkdir /run/data/prs/
    cd /run/data/prs/
    ln -s /run/data/pcaer_post_imp/cobg_gw.hapgen_5cohort.menv.mds_cov .
    ln -s /run/data/clump/daner_hapgen_5_cohorts_run_2a.gz.clumped.xmhc.gz .
    ln -s /run/data/impute/* .
    postimp_navi --out hapgen_5_cohort_score_SCZ --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4,5,6,14 --score daner_hapgen_5_cohorts_run_2a.gz.clumped.xmhc.gz --bgscore --serial --sepa 24
    touch /run/data/prs/postimp.done
fi

FILE=/run/data/loo/postimp.done
if [ ! -f "$FILE" ]; then
    cp /run/data/postimp /run/data/loo -R
    cd /run/data/loo
    my.preploo2 --mds cobg_gw.hapgen_5cohort.menv.mds_cov --postimp postimp_navi --coco 1,2,3,4 hapgen_5_cohorts_run_2a
    cd /run/data/loo/results_hapgen_5_cohorts_run_2a/
    postimp_navi --out hapgen_5_cohorts_run_2a --result results_hapgen_5_cohorts_run_2a --nolahunt --noldsc --gwclump --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap3b --result results_hapgen_5_cohorts_run_2a.loo.no.hap3b --nolahunt --noldsc --gwclump --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap4a --result results_hapgen_5_cohorts_run_2a.loo.no.hap4a --nolahunt --noldsc --gwclump --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap5a --result results_hapgen_5_cohorts_run_2a.loo.no.hap5a --nolahunt --noldsc --gwclump --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap2b --result results_hapgen_5_cohorts_run_2a.loo.no.hap2b --nolahunt --noldsc --gwclump --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap1c --result results_hapgen_5_cohorts_run_2a.loo.no.hap1c --nolahunt --noldsc --gwclump --serial --sepa 24
    cd /run/data/loo
    ln -s results_hapgen_5_cohorts_run_2a/distribution/*/*clumped*.gz .
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap3b --score daner_hapgen_5_cohorts_run_2a.loo.no.hap3b.gz.clumped.xmhc.gz --pheno sim_hap3b_eur_RP-qc2.fam.pt --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4 --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap4a --score daner_hapgen_5_cohorts_run_2a.loo.no.hap4a.gz.clumped.xmhc.gz --pheno sim_hap4a_eur_RP-qc1.fam.pt --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4 --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap5a --score daner_hapgen_5_cohorts_run_2a.loo.no.hap5a.gz.clumped.xmhc.gz --pheno sim_hap5a_eur_RP-qc1.fam.pt --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4 --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap2b --score daner_hapgen_5_cohorts_run_2a.loo.no.hap2b.gz.clumped.xmhc.gz --pheno sim_hap2b_eur_RP-qc2.fam.pt --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4 --serial --sepa 24
    postimp_navi --out hapgen_5_cohorts_run_2a.loo.no.hap1c --score daner_hapgen_5_cohorts_run_2a.loo.no.hap1c.gz.clumped.xmhc.gz --pheno sim_hap1c_eur_RP-qc3.fam.pt --mds cobg_gw.hapgen_5cohort.menv.mds_cov --coco 1,2,3,4 --serial --sepa 24
    touch /run/data/loo/postimp.done
fi

FILE=/run/data/loo/multiplot.done
if [ ! -f "$FILE" ]; then
    cd /run/data/loo/distribution
    danscore_multiplot_2 hapgen_5_cohorts_run_2a.loo.no.*/*combined --out hapgen_5_cohorts_run_2a_loo_danscore_multiplot_2
    touch /run/data/loo/multiplot.done
fi
