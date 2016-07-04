#!/bin/bash
cd /mnt/hgfs/
unison -perms 0 -ignore "Name .DS_Store"  ./Photos/50D_7D/ /NAS/50D_7D/
