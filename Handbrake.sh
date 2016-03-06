#! /bin/bash
# this script is to convert automatically a folder of video files to mp4
# You need to change SRC -- Sourse folder and DEST -- Destination folder
# The mp4 format is 480x270_
# Update  : V0.1.1 25/10/2015 : Adding subtitile, audio Bite rate 128,
# Comment : V0.1.2 25/10/2015 : Adding debug
# Update  : Adding features  : scan anc comapre the output video to the original and delete it if everything is OK
# Update  : Adding features  : Delete original file is optional now
#

#SRC=/Volumes/Data
#SRC=/Volumes/Movie
SRC=$1
FORMAT_SRC=$2
#DEST=/Volumes/Data
#DEST=/Volumes/Movie
DEST=$1
TMP=/Users/$USER/Desktop
DEST_EXT=HB.m4v
WAIT=$3
DELET=$4
HB=HandBrakeCLI
DBUG=true
XO="ref=4:mixed-refs=1:b-adapt=2:bframes=6:weightb=1:direct=auto:me=umh:subq=11:analyse=all:8x8dct=1:trellis=2:no-fast-pskip=1:psy-rd=1,0:merange=24:deblock=-3,-3:rc-lookahead=50:aq-strength=1.2:b-pyramid=2"

#for FILE in `ls $SRC/*.mkv`
# Big file first
#for FILE in `du -h $SRC/*.$FORMAT_SRC  | sort -n -r  | awk '{print $2}'`
for FILE in  `find $SRC -iname "*.$FORMAT_SRC"   `
	do
        	filename=$(basename $FILE)
                TMP_FILE=$(basename $FILE)
        	extension=${filename##*.}
        	filename=${filename%.*}
		# Copy to desktop
		osascript -e "display notification \"$FILE\""
		cp  -v $FILE $TMP
                sleep 7
		#echo "-i $FILE -o $DEST/$filename.$DEST_EXT"
		osascript -e 'display notification "Start compressing"'
		$HB -i $TMP/$TMP_FILE -o $TMP/$filename.$DEST_EXT  -f av_mp4 -m -a 1,2  -E copy:aac  --audio-fallback aac -B 128 -e x264 -q 20 -s 1,2 -N fre,eng -x $XO
		osascript -e 'display notification "End compressing"'
    Size_SRC=`du -h $FILE`
		Size_HB=`du -h $TMP/$filename.$DEST_EXT`
		echo -e "Original size : $Size_SRC \nAfter compres : $Size_HB "
		rm -f $TMP/$TMP_FILE
		# comparaison de la compression avec HB

	 	film_ori=`HandBrakeCLI --scan -i $FILE 2>&1  | grep Duration | awk '{print $2}' | tr ',' ' ' | cut -d'.' -f1`
		film_HB=`HandBrakeCLI --scan -i $TMP/$filename.$DEST_EXT  2>&1  | grep Duration | awk '{print $2}' | tr ',' ' ' | cut -d'.' -f1`
    $DEST_ORIG=`echo $FILE | sed 's%/[^/]*$%/%'`

		if [ "$film_ori" == "$film_HB" ] && [ "$DELET" == "yes" ]
		then

			rm -f $FILE
			echo "Suppression du fichier $TMP/$TMP_FILE"

		else
			echo "Fichier non supprime merci de verifier les deux fichiers"
		fi
                mv $TMP/$filename.$DEST_EXT $DEST_ORIG
				osascript -e 'display notification "Sleeping ..."'
        	sleep $WAIT
	done
