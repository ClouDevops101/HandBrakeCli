Handbrake.sh
=============

Handbrank.sh Command line interface for compressing mkv and mp4 video file to m4v/aac Appletv ios video format

![HandBrake](https://handbrake.fr/img/logo.png)


Handbrake.sh convert mkv to m4v AppleTv format using HandBrakeCli the most powerfull tools to compresse multiple video format.
for more information about Handbrake please visite the official web page :
[ Handbrake website ](https://trac.handbrake.fr/wiki/CLIGuide)

This script take 3 argument as input :
ex :

Handbrake.sh /Volume/video mkv 3600

- the folder to feetch video files
- the video file format_
- the sleep time (in seconds) between two compression

When folder is processed the script sort the video file from bigger file to smaller, than compression begin with the same order

Quality specification :_

- Compression using -e x264
- audio select track -a 1,2
- Biterate -B 128
- Quality -q 20
- Audio format aac -E copy:aac
- Subtitiles -s 1,2

Versions
--------
Handbrake.sh 1.0.1


Requirement
------------

The script use the HandBrakeCLI 64 bite
You can download it in official Hanbrake web site
[HandBrakeCLI] (https://handbrake.fr/downloads2.php)


Installation
------------





```bash
    cp Handbrake.sh /usr/local/bin/ && chmod +x /usr/local/bin/Handbrake.sh
```


Just download (Like the way it used to be)

```bash
    wget -O Handbrake.sh https://raw.githubusercontent.com/LinuxArchitects/HandBrakeCli/master/Handbrake.sh
    chmod +x Handbrake.sh
```
or

```bash
    curl -Lo Handbrake.sh https://raw.githubusercontent.com/LinuxArchitects/HandBrakeCli/master/Handbrake.sh
    chmod +x Handbrake.sh
```
Usage
-----

```bash
    $ Handbrake.sh /Volume/Video_Folder mkv 3600
    usage: Handbrake.sh [arg1] [arg2] [arg3]

    Command line interface for compressing mkv and mp4 video file to m4v/aac Appletv ios video format
    --------------------------------------------------------------------------
    https://github.com/LinuxArchitects/HandBrakeCli

    optional arguments:
       not for yet
```
