# GDAL with FileGDB (ESRI) write support

This is a docker image using the ESRI FileGDB API source-files to compile
the gdal binary, which supports writing FileGDB output data.

Currently, this is creating a 64-bit version only, in a docker container.

## Acknowledgment

This repository shamelessly reuses the gdal docker image build process
used in https://github.com/geo-data/gdal-docker/tree/2.0.0.

## Using the image

TODO: Upload/Generate the image using dockerhub.

Until then, use the steps below.

## Building the image

This is a `shortcut` for https://trac.osgeo.org/gdal/wiki/FileGDB.

For Compiling GDAL itself, have a look at https://trac.osgeo.org/gdal/wiki/BuildHints.

Steps:

1. Run the build process: `docker build -t <image_name> .`
2. Use the image: `docker run -v $(pwd):/data -t <image_name>`
