#!/bin/sh

name=$1
(cp -r sample/ ${1}
    cd ${1} &&
    rockcraft pack &&
    sudo skopeo --insecure-policy copy oci-archive:*.rock docker-daemon:${1}:latest
    )
