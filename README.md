# retrofitvent
A How-to-guide for retrofitting your 3D Printer into a ventilator 

# YouTube
[![Getting Started Developing Software to Control Your 3D Printer / Retrofitting It into a Ventilator](http://img.youtube.com/vi/MDHvyS3sDsQ/0.jpg)](http://www.youtube.com/watch?v=MDHvyS3sDsQ "Getting Started Developing Software to Control Your 3D Printer / Retrofitting It into a Ventilator")

# Getting Started Guide

## Finding the Serial Device Name And Baud Rate of Your 3D Printer Using Your Slicer Software
![Simplify3D Control Panel](/img/simplify3d.png?raw=true "Optional Title")

## Listing All Serial Devices on Your Computer Using Bash/Terminal
`ls /dev/cu.*`

## Example of Opening The Serial Port And Setting Baud Rate on Mac Using Bash (Run this before sending G-Code)
```
exec 3<> /dev/cu.usbmodem621
stty -f /dev/cu.usbmodem621 115200
stty -f /dev/cu.usbmodem621 speed
```

## Example of Sending G-Code to the 3D Printer Using Bash
`echo G1 Y100.00 F500 > /dev/cu.usbmodem621`

## Example of Reading G-Code From The 3D Printer Using Bash
`cat -v < /dev/cu.usbmodem621`

# References 
[A Tutorial on Interfacing Serial Ports Using C/C++](https://blog.mbedded.ninja/programming/operating-systems/linux/linux-serial-ports-using-c-cpp/)

[Setting the baud rate on Mac terminal](https://stackoverflow.com/questions/34233066/change-the-baud-rate-stty-on-mac-terminal)

[Bash scripting tutorial](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

[G-Code Cheat Sheet](http://www.makeit-3d.com/wp-content/uploads/RepRapGcodeCheatSheet.pdf)

[Experimental G-Code for Interfacing I2C (for potentially adding external pressure/flow sensors)](https://marlinfw.org/docs/gcode/M260.html)
