# ![nfcore/test-datasets](docs/images/test-datasets_logo.png)
Test data to be used for automated testing with the nf-core pipelines

## Test data for wf-assembly-snps

This branch contains test data for the [wf-assembly-snps](https://github.com/bacterial-genomics/wf-assembly-snps) pipeline.

## Mini test data
`samplesheet.csv`

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
