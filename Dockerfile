##
# geodata/gdal
#
# This creates an Ubuntu derived base image that installs the latest GDAL
# subversion checkout compiled with a broad range of drivers.  The build process
# is based on that defined in
# <https://github.com/OSGeo/gdal/blob/trunk/.travis.yml>
#

# Ubuntu 14.04 Trusty Tahyr
FROM ubuntu:trusty

# Maintainer of the original image: https://github.com/geo-data/gdal-docker/tree/2.0.0
MAINTAINER Homme Zwaagstra <hrz@geodata.soton.ac.uk>
# Maintainer of the image with fielgdb support
MAINTAINER Nicola Jordan <njordan.hsr@gmail.com>

# Install the application.
ADD . /usr/local/src/gdal-docker/

ENV FILEGDB=/usr/local/src/gdal-docker/FileGDB_API

RUN echo "${FILEGDB}/lib" > /etc/ld.so.conf.d/file_gdb_so.conf
RUN ldconfig

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y make && \
    DEBIAN_FRONTEND=noninteractive make -C /usr/local/src/gdal-docker install clean && \
    DEBIAN_FRONTEND=noninteractive apt-get purge -y make

# Externally accessible data is by default put in /data
WORKDIR /data
VOLUME ["/data"]

# Execute the gdal utilities as nobody, not root
USER nobody

# Output version and capabilities by default.
CMD gdalinfo --version && gdalinfo --formats && ogrinfo --formats
