# ![nfcore/test-datasets](docs/images/test-datasets_logo.png)
Test data to be used for automated testing with the nf-core pipelines

## Test data for wf-aai

This branch contains test data for the [wf-aai](https://github.com/gregorysprenger/wf-aai) pipeline.

## Test data
The mini test dataset `samplesheet.csv` and the full test dataset `samplesheet.full.csv` contain paths to data originating from [Nicholson et al. *International journal of systematic and evolutionary microbiology* (2020)](https://doi.org/10.1099/ijsem.0.003935), where Average Amino Acid Identity (AAI) was used to divide the genus *Chryseobacterium*.

The data in the samplesheets were parsed from the file `Supplemental material 2`.

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
