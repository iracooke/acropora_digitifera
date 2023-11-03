# Acropora digitifera genome

This repository includes scripts for functional gene annotation and some basic genome analysis (repeat finding) on the Acropora digitifera genome.

The latest genome is [v1.1 from NCBI RefSeq](https://www.ncbi.nlm.nih.gov/assembly/GCF_000222465.1/)

Annotations are available as the file `annotation_table.tsv` after downloading the data package (see below)

### Functional annotations

Command line analyses are summarised in [latest/README.md](v1.1/README.md)

R code to merge results and produce a final file is in [01_annotate](01_annotate.md)

### Running code and accessing results

If you would simply like to run the R code and/or download final results proceed as follows;

1. Checkout this repository 
2. Download additional data not hosted on github due to size constraints
```bash
wget 'http://data.qld.edu.au/public/Q5999/iracooke/acropora_digitifera/acropora_digitifera.tgz' -O data.tgz
tar -zxvf data.tgz 
```
3. You should now be able to compile the Markdown files

## Genome Versions

Several versions are available for this species including;

- [v0.9 and v1.0 from OIST](https://marinegenomics.oist.jp/coral/viewer/download?project_id=3)
- [v2.0 from OIST](https://marinegenomics.oist.jp/acropora_digitifera/viewer/download?project_id=57)
- [v1.1 from NCBI RefSeq](https://www.ncbi.nlm.nih.gov/assembly/GCF_000222465.1/) 

As of 23-3-2020 v1.1 was the best choice for analysis since it has high quality gene models from NCBI.

## Transcriptome

A transcriptome assembly is available from [OIST](http://marinegenomics.oist.jp/coral/download/adi_transcriptome_assembly.v1.fa.gz) 




