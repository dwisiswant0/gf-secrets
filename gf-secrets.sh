#!/bin/bash
for i in `gf -list`; do [[ ${i} =~ "_secrets"* ]] && gf ${i}; done