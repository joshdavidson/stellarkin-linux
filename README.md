# Stellarkin Linux
Stellarkin is a linux distribution for the Raspberry Pi. It provides educational, productivity, and fun applications for children ages 2 to 12. The objective of Stellarkin is to be your child's gateway into linux by being easy and fun to use for both children and parents.
## Installation
There are 2 ways to install Stellarkin.  You can run the setup script on a fresh install of Raspberry Pi OS, or you can download the image from our releases.
### To install using the img file release:
Download the Stellarkin Release from [here](https://github.com/joshdavidson/stellarkin-linux/releases). Use Raspberry Pi Imager to to image your microSD card with Stellarkin.  Instructions can be found [here](https://www.raspberrypi.org/documentation/installation/installing-images/). 
### To install using stellarkin_setup.sh:
Use Raspberry Pi Imager to install Raspberry Pi OS. Instructions can be found [here](https://www.raspberrypi.org/documentation/installation/installing-images/). Boot the newly installed Raspberry Pi OS and execute the following commands from a terminal:
```
$ git clone https://github.com/joshdavidson/stellarkin-linux.git
$ cd stellarkin-linux
$ ./stellarkin_setup.sh
```
