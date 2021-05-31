# raspdl
![N|Solid](https://img.shields.io/github/last-commit/v3lip/PhishingSpammer)
![N|Solid](https://img.shields.io/github/followers/v3lip?style=social)


![N|Solid](https://i.imgur.com/E5ltGFC.png)

## Intro:

This is a script I made in bash to make downloading files from my Raspberry PI much easier.
I am a lazy go so therefore making this helps me alot. You can use this to download anything
through SSH.


## Installation:
I have this setup like this (you can do this how you want, but I like using it like this because I have alot of
scripts that I plan to use and I want them in their own folder)

First you will need to download sshpass
`sudo apt-get install sshpass`

I have my script located here:
`/home/kali/installedScripts/`

Once you're in the folder of your choosing do:
`git clone https://github.com/v3lip/raspdl`

After the download you want to edit the file.
Do `nano raspdl`/`vim raspdl` and edit the following variables:
    pass=PASSWORD
    user=USERNAME
    ip=0.0.0.0

Now you're done!
If you would like to use this script anywhere you are you would want to do this aswell:
`nano ~/.bashrc`

and add the following line:
`export PATH="/home/kali/installedScripts/:$PATH"`

NOTE: You would need to edit the /home/kali/installedScripts to your own path where the script you downloaded is located.


## usage:

    raspdl -r /home/kali/Desktop/hellothere.txt -l hellothere.txt
    
  * -r    remote file path
  * -l    local file path

