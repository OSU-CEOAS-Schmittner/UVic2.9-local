# UVic2.9-Local

Source code to the UVic Earth model will exist in system directory somewhere on the cluster. This repo gives
you all the code and tools needed to make local changes to the model and run them in your own environment.

## Getting Started

Once this repo is checked out in your home directory on the master node of the cluster, exec the config script:

```
$ ./config_UVic_env.sh
```

This will generate the required `myrun.q` file for you to run your model. Your model will fail to run if you
don't run this script first.


### Prerequisites

Currently none.

### Installing

1. Clone this repo somewhere.
2. Exec `config_UVic_env.sh`
3. For quick tests: modify in `code\` and compile: `mk e`
4. For larger changes you plan to keep copy the original .F file (the path is in the fist line of the corresponding file in the `code/`) into `updates/` and compile: `mk e`
4. Submit a job to run `qsub myrun.q`

There's also a handy script to clean up your working directory as the model litters a lot of output and log files that
you may not want. `cleanup.sh`.

## Running the tests

TBD

### Break down into end to end tests

TBD

### And coding style tests

TBD

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

