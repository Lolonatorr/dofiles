#!/bin/bash
#cd ~/.screenlayout
#
#
#ls -Art | tail -n 1
#newest=$(ls -Art | tail -n 1)
#
#/bin/sh $newest
#
autorandr -c
sleep 5
/usr/bin/nitrogen --restore
