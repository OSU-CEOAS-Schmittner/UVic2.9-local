#!/usr/bin/bash
# A farily dumb script to generate the correct mobi1.9nb.q file. This does no
# error checking and will blow away whatever mobi1.9nb.q file you already
# have to BE CAREFUL!
# Use this script to submit a job witn qsub filename. Change your filename to
# reflect your current run. This way you'll be able to distinguish runs with qstat.

FILENAME="mobi1.9nb.q"
WORKING_DIR=$(dirname -- $(readlink -fn -- "$0"))
touch $FILENAME
cat /dev/null > $FILENAME
echo "#!/bin/csh" >> $FILENAME
echo "#$ -e $WORKING_DIR" >> $FILENAME
echo "#$ -o $WORKING_DIR" >> $FILENAME
echo "cd $WORKING_DIR" >> $FILENAME
echo "time ./UVic_ESCM > pr" >> $FILENAME

# Compile everything now
cd $WORKING_DIR
mk c
