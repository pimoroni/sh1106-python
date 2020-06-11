# ssh1106 OLED

This software is for driving our 128x128 1.12" OLED display: https://shop.pimoroni.com/products/1-12-oled-breakout

This repository helps you get luma.oled and luma.core installed, so you can start displaying things on your OLED. Luma supports LCD displays, LED displays and more alongside OLEDs, so the code you write for this display will be easily portable to others!

You can find full documentation for luma here: https://luma-oled.readthedocs.io/en/latest/

And plenty of examples here: https://github.com/rm-hull/luma.examples

# Installing

## Official Luma Library with SH1106 Support:

* Enable i2c: `sudo raspi-config nonint do_i2c 0`
* Install the library: `sudo pip3 install luma luma.oled`
* (Optional) grab the examples: `git clone https://github.com/rm-hull/luma.examples`

## Latest/development library from GitHub:

* `git clone https://github.com/pimoroni/sh1106-python`
* `cd sh1106-python`
* `sudo ./install.sh`

