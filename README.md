# GDAL with FileGDB (ESRI) write support

This is a docker image using the ESRI FileGDB API source-files to compile
the gdal binary, which supports writing FileGDB output data.

Currently, this is creating a 64-bit version only, in a docker container.

## Acknowledgment

This repository shamelessly reuses the gdal docker image build process
used in https://github.com/geo-data/gdal-docker/tree/2.0.0.

## Using the image

Getting supported formats:

```shell
docker run --rm -it geometalab/gdal-with-filegdb:latest ogrinfo --formats
```
Doing something with data, ie. having a `test_fgdb.gdb` file/directory:

```shell
docker run -v $(pwd):/data --rm -it geometalab/gdal-with-filegdb:latest ogrinfo test_fgdb.gdb
```


## Building the image and pushing a new version on Dockerhub

This is a `shortcut` for https://trac.osgeo.org/gdal/wiki/FileGDB.

For Compiling GDAL itself, have a look at https://trac.osgeo.org/gdal/wiki/BuildHints.

Assuming you have the corresponding rights to push and posess a docker login and `docker login` succeeded:

1. Run the build process: `docker build -t geometalab/gdal-with-filegdb .`
2. docker push geometalab/gdal-with-filegdb:latest
