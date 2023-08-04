#!/bin/bash
cd ~/.screenlayout


ls -Art | tail -n 1
newest=$(ls -Art | tail -n 1)

/bin/sh $newest
/usr/bin/nitrogen --restore
