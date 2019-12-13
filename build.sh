#!/bin/sh

BUGFIX=1
MINOR=16
MAJOR=2
ECR_TAG=geoserver

# Build Geoserver
echo "Building GeoServer ${MAJOR}.${MINOR}.${BUGFIX} "

docker build --build-arg GS_VERSION=${MAJOR}.${MINOR}.${BUGFIX} --build-arg COMMUNITY_MODULES=true -t ${ECR_TAG}:${MAJOR}.${MINOR}.${BUGFIX} .

# Build Arguments - To change the defaults when building the image
#need to specify a different value.

#--build-arg ORACLE_JDK=true
#--build-arg TOMCAT_EXTRAS=false
#--build-arg WAR_URL=http://downloads.sourceforge.net/project/geoserver/GeoServer/<GS_VERSION>/geoserver-<GS_VERSION>-war.zip
#--build-arg INITIAL_MEMORY=2G
#--build-arg MAXIMUM_MEMORY=4G




