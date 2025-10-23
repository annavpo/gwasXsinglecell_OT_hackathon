conda install -y statsmodels

magma/bin/static/magma \
  --gene-results CELLECT_PSORIASIS/CELLECT-MAGMA/precomputation/psoriasis/psoriasis.genes.raw \
  --gene-covar CELLECT_PSORIASIS/CELLECT-MAGMA/precomputation/magma_dummy_gene_covar_file.tab \
  --model correct=all direction-covar=greater \
  --settings abbreviate=0 gene-info \
  --out CELLECT_PSORIASIS/CELLECT-MAGMA/precomputation/psoriasis/psoriasis.resid_correct_all

python3 scripts/prioritize_annotations_manual.py \
  --magma_file CELLECT_PSORIASIS/CELLECT-MAGMA/precomputation/psoriasis/psoriasis.resid_correct_all.gsa.genes.out \
  --es_matrix_file data/ensembl_psoriasis.csv \
  --specificity_matrix_name psoriasis \
  --gwas_name psoriasis \
  --base_output_dir CELLECT_PSORIASIS/CELLECT-MAGMA \
  --exclude_mhc
python3 scripts/parse_results_manual.py     --base_output_dir CELLECT_PSORIASIS/CELLECT-MAGMA