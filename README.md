# ![nfcore/test-datasets](docs/images/test-datasets_logo.png)
Test data to be used for automated testing with the nf-core pipelines

## Test data for wf-ani

This branch contains test data for the [wf-ani](https://github.com/gregorysprenger/wf-ani) pipeline.

## Mini test data
The `samplesheet.csv` links to data from a *Streptomyces cavourensis* found in a a salt lake originating from [Chong et al. *Data in Brief* (2023)](https://doi.org/10.1016/j.dib.2022.108877).

Test data used are [CP024957](https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/804/165/GCF_002804165.1_ASM280416v1/GCF_002804165.1_ASM280416v1_genomic.fna.gz) and [2BA6PG](https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/024/297/125/GCF_024297125.1_ASM2429712v1/GCF_024297125.1_ASM2429712v1_genomic.fna.gz).

## Downloading test data

Due the large number of large files in this repository for each pipeline, we highly recommend cloning only the branches you would use.

```bash
git clone <url> --single-branch --branch <pipeline/modules/branch_name>
```

To subsequently clone other branches[^1]

```bash
git remote set-branches --add origin [remote-branch]
git fetch
```

## Support

For further information or help, don't hesitate to get in touch.

[^1]: From [stackoverflow](https://stackoverflow.com/a/60846265/11502856)
