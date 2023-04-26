# How to unbrick your Pro Micro board (fast)

> ⚠️  Warning: Use at your own risk. I only tried this with this pro micro clone: https://archive.is/I7Rhd

In case you bricked your board and also have trouble selecting the right port and board and compiling the sketch and uploading it in under 8 seconds (more about that [on my blog](https://blog.ledeniz.de/posts/2023-04-23-unbrick-pro-micro/)).

- Connect board via usb
- Connect `RST` to `GND` and release again
- Run `flash.sh` 

## Sketch
`init.ino.hex` was compiled with the Arduino IDE for the Sparkfun 5V 16MHz Pro Micro and just contained empty `setup()` and `loop()` functions. You can replace it with your own compiled sketch or specify a filepath to it as the first argument to `flash.sh`.

## avrdude
```
avrdude: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.26, BuildID[sha1]=046f1dcaec1701537fa6735b6551524d9a12f769, stripped
avrdude version 6.3-20190619, URL: <http://savannah.nongnu.org/projects/avrdude/>
```

