> ⚠️  Warning: Use at your own risk. I only tried this with this pro micro clone: https://archive.is/I7Rhd

Run the `flash.sh` script to unbrick a sparkfun pro micro 5V 16MHz, in case you also have trouble selecting the right port and board and compiling the sketch in 8 seconds (more about that [on my blog](https://blog.ledeniz.de/posts/2023-04-23-unbrick-promicro/)).
- connect board via usb
- connect RST to GND
- run flash.sh 

You also can provide a filepath to flash a different file.

The compiled sketch that is in this repo was compiled with the Arduino IDE and just contanined empty setup() and loop() functions. You can replace it with your own compiled sketch or specify a filepath to it as the first argument to `flash.sh`.

avrdude: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.26, BuildID[sha1]=046f1dcaec1701537fa6735b6551524d9a12f769, stripped
avrdude version 6.3-20190619, URL: <http://savannah.nongnu.org/projects/avrdude/>
 