cat ~/Downloads/rcsb_pdb_custom_report_20251014064336.csv |tr -d '"' |  awk -F ',' '{if (length($2)>0) {name=$2}; print name,$3,$4,$5}' |grep PF00014 |awk '{print ">"$1"_"$3;print $2}' >pdb_kunitz.fasta

cd-hit -i pdb_kunitz.fasta -o pdb_kunitz.clst

mv pdb_kunitz.clst pdb_kunitz_nr.fasta

clustalo -i pdb_kunitz_nr.fasta -o align.fasta --outfmt=fasta 


awk '{if (substr($1,1,1)==">") {print "\n" $1} else {printf "%s", $1 } }' align.fasta |tail -n +2 >kunitz_aligned_clean.fasta

hmmbuild kunitz_aligned_clean.hmm kunitz_aligned_clean.fasta


