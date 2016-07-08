#!/bin/bash
# unzip .apk file, then decompile
PRG="$1"
if [ -z "$PRG"]
then
	echo 'Please enter .apk file name.'
else
	PRGZIP=$PRG".zip"
	mv $PRG $PRGZIP
	unzip $PRGZIP
	# Here you should change the dex2jar.sh path to yours
	~/software/dex2jar/dex2jar.sh classes.dex
fi
