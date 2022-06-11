# Go for VSCode using Air and Delve

This is an example for setting up [Golang](https://golang.org/) project with VSCode using Air and Delve by running shell script

## Quick Start
* **Step 1.** clone this repo
* **Step 2.** type "./run.sh start" in your CLI and enter

## Caveats

Editing a file will rebuild and restart the application automatically but VSCode debugger indeed cannot reattach to your debug target

You cannot automatically restart the node debugger when the source file change