#!/bin/bash
multipass launch -n $1 $2 $3 $4 --cloud-init start.yml

