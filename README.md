# ![nfcore/test-datasets](docs/images/test-datasets_logo.png)
Test data to be used for automated testing with the nf-core pipelines

## Test data for wf-paired-end-illumina-assembly

This branch contains test data for the [wf-paired-end-illumina-assembly](https://github.com/gregorysprenger/wf-paired-end-illumina-assembly) pipeline.

## Mini test data
The `samplesheet.csv` links to data from a *Burkholderia pseudomallei* found in a freshwater aquarium originating from [Dawnson et al. *Emerging Infectious Diseases* (2021)](https://doi.org/10.3201/eid2712.211756).

To make this data as small as possible, only the top 250k reads were used from SRA data SRR16343585.

## Full-size test data

The `samplesheet.full.csv` links to data from a nearly complete draft genome of *Corynebacterium mastitidis* originating from [Cheleuitte-Nieves C et al. *Genome Announcements* (2018)](https://doi.org/10.1128/genomeA.00050-18).

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
