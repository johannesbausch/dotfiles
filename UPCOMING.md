# Plugins

This development enviroment is not finished yet, there is still a lot to be added:
1. Debugger
2. Move lines up and down



# Feature


## Auto Shutdown WSL

When WezTerm is closed, the command:
```shell
wsl --shutdown
```
should be run in the background automatically.
This can be tested by running:
```shell
wsl.exe --list --verbose
```


## Auto Close CustomRP

Close Discord CustomRP when WSL shuts down.
