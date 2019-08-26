<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick" />
<input type="hidden" name="hosted_button_id" value="8ET92FUJMTPY2" />
<input type="image" src="https://www.paypalobjects.com/en_US/FR/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
<img alt="" border="0" src="https://www.paypal.com/en_FR/i/scr/pixel.gif" width="1" height="1" />
</form>
<a href="http://bitly.com/2grT54q"><img src="https://cdn.codementor.io/badges/i_am_a_codementor_dark.svg" alt="I am a codementor" style="max-width:100%"/></a></a><a href="http://bitly.com/2grT54q"><img src="https://handbrake.fr/img/logo.png" height="50">
[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.me/HAAW)
  
Handbrake.sh
=============

Handbrank.sh Command line interface for compressing mkv and avi video file to m4v/aac AppleTv and  iOS video format and
  send task notification to a phone over SMS

![HandBrake](Handbrake.png)


Handbrake.sh convert mkv to m4v AppleTv format using HandBrakeCli the most powerfull tools to compresse multiple video format.
for more information about Handbrake please visite the official web page :
[ Handbrake website ](https://trac.handbrake.fr/wiki/CLIGuide)

This script take 3 argument as input :
ex :

Handbrake.sh /Volume/video "mkv|avi" 800 yes "06XXXXX"

- the folder to feetch video files
- the video file format, multiple format (container) could be specified
- the sleep time (in seconds) between two compression
- Yes/no deleting source file

Sending

Quality specification :

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
    $      Handbrake.sh /Volume/Video_Folder "mkv|avi"  3600    yes    "Phone number"
    usage: Handbrake.sh     [Arg1]             [Arg2]   [Arg3] [Arg4]  [Arg5]

    Command line interface for compressing mkv and mp4 video file to m4v/aac Appletv ios video format notification over SMS
    --------------------------------------------------------------------------
    https://github.com/LinuxArchitects/HandBrakeCli


```
