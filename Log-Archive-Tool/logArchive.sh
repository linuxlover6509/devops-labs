#!/bin/env bash

LOGDIR=$1
LOGSAVEDIR=$2

TIMESTAMP=$(date '+%d_%m_%Y') #format day_month_year


lsUsage(){
	echo "---------------------------------------"
	echo -e "ERROR! No argument specified or directory does not exist\n"
	echo "USAGE:"
	echo "./logArchive.sh  /path/to/log/dir /path/to/archive/dir"	
	echo "---------------------------------------"
}


#dir check
[[ -d $LOGDIR ]] && [[ -d $LOGSAVEDIR ]] || { lsUsage; exit 1; }


echo "Starting compression..."
tar czf $LOGSAVEDIR/logs_archive_$TIMESTAMP.tar.gz $LOGDIR
echo "Done! $LOGSAVEDIR/logs_archive_$TIMESTAMP.tar.gz"
