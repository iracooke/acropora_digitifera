# Version 1.1

Downloading the genome files

```bash
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/222/465/GCF_000222465.1_Adig_1.1/GCF_000222465.1_Adig_1.1_genomic.fna.gz

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/222/465/GCF_000222465.1_Adig_1.1/GCF_000222465.1_Adig_1.1_cds_from_genomic.fna.gz

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/222/465/GCF_000222465.1_Adig_1.1/GCF_000222465.1_Adig_1.1_protein.faa.gz
```

## Annotation

**Trinotate style analyses**

We used an annotation pipeline closely resembling the Trinotate pipeline but without using Trinotate scripts to combine results and with a few small additional steps. 

The annotation script, [01_trinotate.sh](annotation/01_trinotate.sh) relies on two files from Trinotate;

- `uniprot_sprot.pep` which is a fasta file of proteins from SwissProt
- `Pfam-A.hmm.gz` which is a database of conserved domains from Pfam

These must be downloaded and indexed according to instructions on the trinotate website.  The `annotate.sh` script assumes that both are present at the path `/fast/shared/trinotate_dbs`.  If this location is different for you just modify the script to point to the correct path on your system.

The trinotate script should produce 5 files corresponding to outputs from blastx, blastp, pfam, signalp and tmhmm



**Lookup information from SwissProt**

After running the blastp and blastx analyses above we export all of the hits into a single text file 

```bash
cat GCF_000222465.1_Adig_1.1_protein.blast[px].outfmt6 | awk '{print $2}' | sort -u > blast_uniprot_ids.txt
```

This file can be uploaded to the [Uniprot mapping tool](https://www.uniprot.org/uploadlists/) to retrieve an excel formatted file with complete information about all of these proteins.

**Run Interproscan**

In addition to the analyses above we also run Interproscan using the script `02_iprs.sh`. This splits the protein fasta file into chunks and runs interproscan separately on each chunk. The combined results are available in a single `.tsv` file at the end.

**Basic protein information**

Make a list of all proteins with their corresponding lengths using bioawk

```bash
cat GCF_000222465.1_Adig_1.1_protein.faa | bioawk -c fastx '{print $name,length($seq)}' > GCF_000222465.1_Adig_1.1_protein.lengths.txt
```

