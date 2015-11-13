# HandBrakeCli
Handbrake.sh convert mkv to m4v AppleTv format using HandBrakeCli the most powerfull tools to compresse multiple video format.
for more information about Handbrake please visite the official web page :
https://trac.handbrake.fr/wiki/CLIGuide

This script take 3 argument as input :
ex :  

Handbrake.sh /Volume/video mkv 3600

- the folder to feetch video files
- the video file format 
- the sleep time (in seconds) between two compression

When folder is processed the script sort the video file from bigger file to smaller, than compression begin with the same order

Quality specification : 

- Compression using -e x264
- audio select track -a 1,2
- Biterate -B 128
- Quality -q 20
- Audio format aac -E copy:aac
- Subtitiles -s 1,2


