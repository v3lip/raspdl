# raspdl
![N|Solid](https://img.shields.io/github/last-commit/v3lip/PhishingSpammer)
![N|Solid](https://img.shields.io/github/followers/v3lip?style=social)


![N|Solid](https://i.imgur.com/E5ltGFC.png)

Easily download remote files with this script. Yes, I am lazy.

Instead of doing longer commands, you can install this script and do everything very much more easy when you have to download files from for example your Raspberry PI, or anything running SSH really.

Yes, again, I am very lazy.

Edit the 3 top variables to fit your needs.

[pass, user, ip]

You will also need sshpass:
    
Install through apt/apt-get:
    
    apt-get install sshpass

**usage:**

    raspdl -r /home/kali/Desktop/hellothere.txt -l hellothere.txt
    
  * -r = remote file path
  * -l = local file path
