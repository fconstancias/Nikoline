script \
  ${MY_DIR}/metabaRpipe/Rscripts/dada2_metabarcoding_pipeline.Rscript \
  -i 01_RawData \
  --preset custom --pool FALSE --minover 15 --trunclen 280,260 --maxee 3,6 --trim_length 400,650 --rm_primers FALSE \
  --db ${MY_DIR}//metabaRpipe/databases/databases/eHOMD_RefSeq_dada2_V15.22.fasta.gz  \
  --db_species ${MY_DIR}/metabaRpipe/databases//databases/eHOMD_RefSeq_dada2_assign_species_V15.22.fasta.gz \
  --nbases 10  -T 1 \
  --save_out test_pipe_Rscript.RDS > mylogs.txt 2>&1
