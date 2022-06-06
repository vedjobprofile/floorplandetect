#!/bin/bash -xv
seq=`cat ../config/floorplan.seq`
seq=`expr $seq + 1`
echo $seq >  ../config/floorplan.seq
ifile=${seq}.jpg
curl $1 -o $ifile
gsutil mv $ifile gs://floorplan_test/
