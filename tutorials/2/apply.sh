#!/usr/bin/env bash

rm -v plan
terraform plan -out plan && 
  terraform apply plan

