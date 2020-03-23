
echo latest/annotation/GCF_000222465.1_Adig_1.1_protein.lengths.txt > data.list
echo latest/annotation/GCF_000222465.1_Adig_1.1_protein.blastp.outfmt6 >> data.list
echo latest/annotation/GCF_000222465.1_Adig_1.1_protein.blastx.outfmt6 >> data.list
echo latest/annotation/GCF_000222465.1_Adig_1.1_protein.signalp.out >> data.list
echo latest/annotation/pfam_tabular.txt >> data.list
echo latest/annotation/adi.tsv >> data.list
echo latest/annotation/uniprot.xlsx >> data.list
echo latest/annotation_table.tsv >> data.list

echo latest/annotation_table.tsv >> data.list

tar -zcvf acropora_digitifera.tgz -T data.list

rm data.list