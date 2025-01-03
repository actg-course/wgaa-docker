This repository contains the docker images used by the ACTG course Thes are already available for use via Docker or Singularity here: https://hub.docker.com/orgs/systemsgenetics/repositories


Current Tool Names
==================
The following is a list of tool names currently supported by this Makefile

| Tool | Version |
| ---- | ------- |
| bedtools | 2.30.0 |
| biopython | 1.81 |
| blast | 2.14.0 |
| braker | 2.1.6 |
| busco | 5.4.3-0 |
| bwa | 0.7.17 |
| bwa | 0.7.18 |
| edta | 2.0.1 |
| edta | 2.2.2 |
| emboss | 6.6.0 |
| fastp | 0.23.2 |
| fastp | 0.24 |
| fastqc | 0.11.9 |
| fastqc | 0.12.1 |
| genespace | 1.2.3 |
| hic_qc | 6881c33 |
| hifiasm | 0.16.1 |
| hifiasm | 0.24.0 |
| jellyfish | 2.2.10 |
| jellyfish | 2.3.1 |
| juicer | 1.22.01 |
| kraken | 2.1.3 |
| mcscanx | b1ca533 |
| meryl | 1.4.1 |
| mitohifi | 2.2 |
| multiqc | 1.13a |
| multiqc | 1.26 |
| mummer | 3.23 |
| mummer | 4.0.0rc1 |
| novoplasty | 4.3.1 |
| novoplasty | 4.3.5 |
| orthofinder | 2.5.5 |
| pasa | 2.5.2 |
| r-base | 4.1.3 |
| r-base | 4.4.2 |
| repeatmasker | 4.1.2.p1 |
| samtools | 1.15.1 |
| samtools | 1.21 |
| sra-tools | 2.11.0 |
| star | 2.7.10a |
| trinity | 2.13.2 |
| yahs | 1.2.2 |
| yahs | 1.2a.2-0 |

Building, Testing Pushing All
=============================
To build all docker images:
```bash
make
```

To test that all images are working run the following run the following:
```bash
make test
```
The version of the software should be printed to the screen. This test only ensures the software can be run, no that it is working as expected.

To push all docker images to DockerHub
```bash
make push
```

Building, Testing Pushing Single Tool
=====================================
You can build, test, push and run a single tool by changing to the tool directory, then to the toll version firset and then running the following commands.


To build the tool
```bash
make
```

To test the tool
```bash
make test
```
To push the tool to DockerHub
```bash
make push
```
To run in interactive mode
```bash
make run
```
