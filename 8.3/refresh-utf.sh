#!/bin/bash

rm -rf dev-utf\
&& cp -a dev dev-utf\
&& cd dev-utf\
&& find -type f -exec iconv -f koi8-r -o \{\}.utf8 \{\} \;\
&& rm *.po\
&& cd ..

