#!/bin/bash

# if we get "-c" then don't hardlink files, copy them instead
cmdToRun="ln -f"
if [ "$1" == "-c" ]; then
  cmdToRun="cp -f" 
fi

# copy files (recursively) from the root folder
filesToCopy=("vimrc" "bashrc")
dirToCopy=("bash_plugins" "vim")

# for every file that will be copied, assume it has a . in front 
for i in ${dirToCopy[@]}; do 
  # create the containing directories if they don't exist
  nondotDir=($(find $i -type d))
  for j in ${nondotDir[@]}; do
    mkdir -vp $(echo "$HOME/."$j)
  done

  # link/copy all the files in the containing directories
  nondotFiles=($(find $i -type f))
  for j in ${nondotFiles[@]}; do
    $cmdToRun $j $(echo "$HOME/."$j)
    echo "\"$cmdToRun\" on file \"$j\"" to "$(echo "$HOME/."$j)" done
  done
done

# do the command for every file in the list (that needs to have a . in front)
for i in ${filesToCopy[@]}; do 
  $cmdToRun $i $(echo "$HOME/."$i)
  echo "\"$cmdToRun\" on file \"$i\"" done
done

