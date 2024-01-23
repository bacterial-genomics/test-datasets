######################################################################
# The species and strains below were not found using this code.
# They are likely in the refseq summary file, though 84 samples
# should be plenty for a full dataset analysis.
#   - Chryseobacterium camelliae strain THG-C4-1
#   - Chryseobacterium elymi strain RHA3-1
#   - Chryseobacterium flavum strain CW-E 2
#   - Chryseobacterium geocarposphaerae strain 91A-561
#   - Epilithonimonas hispanica strain VP48
#   - Chryseobacterium indoltheticum strain DSM 16778
#   - Kaistella koreensis strain CCUG 49689
#   - Chryseobacterium lathyri strain RBA2-6
#   - Chryseobacterium massiliae/mucoviscidosis strain CCUG 51329
#   - Chryseobacterium massiliae/mucoviscidosis strain VT16-26
#   - Chryseobacterium piscium strain LMG 23089
#   - Chryseobacterium rhizoplanae strain JM-534
#   - Chryseobacterium rhizosphaerae strain RSB3-1
#   - Kaistella senegalensis strain FF12
#   - Empedobacter falsenii strain Wf282
#   - Weeksella massiliensis strain FF8
######################################################################

# Download assembly summary
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_refseq.txt

# Download Supplemental material 2 and convert to TSV
## wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7660247/bin/ijsem-70-4432-s002.xlsx

# Replace `T` at the end of each strain
sed -i 's/T$//g' list.txt

# Get link for each strain in list.txt and append to links.txt
# Update IFS for while loop
old_ifs=$IFS
IFS=$'\n'
while read -r line; do
  if [[ $line =~ ^StrainNumber* ]]; then
    continue
  else
    strain=$(echo ${line} | awk -F '\t' '{print $1}')
    sample=$(echo ${line} | awk -F '\t' '{print $4}')
    species=$(echo ${sample} | cut -d ' ' -f2)

    # Update strain information
    add_regex_chars=$(echo -e $strain | sed -e 's/ /\.\*/g;s/_/\.\*/g;s/-/\.\*/g')

    # Grab link in assembly_summary_refseq.txt
    link=$(grep $species assembly_summary_refseq.txt | grep -E -m1 $add_regex_chars | cut -f20)

    # Add link to links.txt if found
    if [[ -z $link ]]; then
      echo -e "Cannot find link for: ${sample} strain ${strain}"
    else
      full_link=$( echo "${link}/$(echo $link | awk -F '/' '{print $NF}')_genomic.gbff.gz" )
      sample_output_name=$(echo -e "${sample}_${strain}" | sed -e 's/ /_/g')
      echo -e "${sample_output_name},${full_link}" >> samplesheet.full.csv
    fi
  fi
done< <(cat list.txt)

sed -i '1i sample,file' samplesheet.full.csv

# Reset IFS
IFS=$old_ifs
