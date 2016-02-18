#!/bin/bash

ESCONDERARQUIVO=`defaults read com.apple.finder AppleShowAllFiles`
if [ $ESCONDERARQUIVO == 1 ] 
	then 
		defaults write com.apple.finder AppleShowAllFiles -boolean false
	else 
		defaults write com.apple.finder AppleShowAllFiles -boolean true
fi
killall Finder
