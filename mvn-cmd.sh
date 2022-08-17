#! /bin/sh -eu

# Copy files from /usr/share/maven/ref into ${MAVEN_CONFIG}
# So the initial ~/.m2 is set with expected content.
# Don't override, as this is just a reference setup

git clone ${GIT_URL} .
mvn install
