#!/bin/bash
git archive HEAD | sudo docker run -i -v ${PWD}/obj:/obj -v /build -w /build inavbuild bash -c "tar x && make TARGET=NAZE && cp -R obj/* /obj"