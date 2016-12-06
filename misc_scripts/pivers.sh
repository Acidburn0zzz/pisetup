#!/bin/bash
CPU=`cat /proc/cpuinfo | grep Serial | cut -d ':' -f 2 | sed -e "s/ //g"`
HW=`cat /proc/cpuinfo | grep Hardware | cut -d ':' -f 2 | sed -e "s/ //g"`
REV=`cat /proc/cpuinfo | grep Revision | cut -d ':' -f 2 | sed -e "s/ //g"`
#values from http://elinux.org/RPi_HardwareHistory
case ${REV} in
  a02082|a22082)
    echo 'Pi 3 Model B, 1024MB RAM'
    ;;
  a01040|a01041|a21041|a22042)
    echo 'Pi 2 Model B, 1024MB RAM'
    ;;
  900092|900093)
    echo 'Pi Zero, 512MB RAM'
    ;;
  0015)
    echo 'Pi Model A+, 512MB RAM'
    ;;
  0012)
    echo 'Pi Model A+, 256MB RAM'
    ;;
  0010|0013)
    echo 'Pi, Model B+, 512MB RAM'
    ;;
  0011|0014)
    echo 'Compute Module, 512MB RAM'
    ;;
  0002|0004|0005|0006)
    echo 'Pi Model B, 256MB RAM'
    ;;
  000d|000e|000f)
    echo 'Pi Model B, 512MB RAM'
    ;;
  0003)
    echo 'Pi Model B (ECN0001), 256MB RAM'
    ;;
  Beta)
    echo 'Pi, Model B (Beta), 256MB RAM'
    ;;
  0007|0008|0009)
    echo 'Pi, Model A, 256MB RAM'
    ;;
  *)
    echo '${REV} (unknown)'
    ;;
esac
