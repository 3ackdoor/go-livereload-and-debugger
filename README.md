# Go for VSCode using Air and Delve

This is an example for setting up [Golang](https://golang.org/) project with VSCode using Air and Delve by running shell script.
You can go read my Medium article about this project through this [link](https://medium.com/@anewnurse/go-series-1-go-for-vscode-using-delve-and-air-35bebfa63fda)

## Quick Start
* **Step 1.** clone this repo
* **Step 2.** type "./run.sh start" in your CLI and enter

<p align="center">
<img src="docs/images/action.gif" width=75%>
<br/>
<em>(In action)</em>
</p>

## Caveats

Editing a file will rebuild and restart the application automatically but VSCode debugger sadly indeed cannot reattach to your debug target
