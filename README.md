# ShellHiddenFolder
A shell script to show or hidden files in your Mac.

## Instructions
Create a service is realy easy, you just need following this steps:

1. Open the automator(/applications) in your Mac;

2. Choose the services option for your document;
![Choose services option](https://github.com/diogoalbuquerque/ShellHiddenFolder/blob/master/img/choose-service.png "Choose services option")

3. Find  "run shell script" option;
![Create Shell Script](https://github.com/diogoalbuquerque/ShellHiddenFolder/blob/master/img/create-shell-script.png "Create Shell Script")

4. Add the content of hideShow.sh in the shell script;

```sh
#!/bin/bash

ESCONDERARQUIVO=`defaults read com.apple.finder AppleShowAllFiles`
if [ $ESCONDERARQUIVO == 1 ] 
	then 
		defaults write com.apple.finder AppleShowAllFiles -boolean false
	else 
		defaults write com.apple.finder AppleShowAllFiles -boolean true
fi
killall Finder
```

Now Save the file!!! 
