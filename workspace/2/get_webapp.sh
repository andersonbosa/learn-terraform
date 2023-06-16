#!/usr/bin/env bash
# -*- coding: utf-8 -*-

OUTPUT_PATH=./CVWA

rm -rf $OUTPUT_PATH
 
git clone https://github.com/convisolabs/CVWA.git $OUTPUT_PATH

rm -rf $OUTPUT_PATH/.git