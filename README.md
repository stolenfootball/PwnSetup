# PwnSetup

This is a collection of config files and scripts I use when doing exploit development work on Linux.  After manually setting it up about a thousand times, it seemed smart to automate it.

## Dependencies
The following are required for the config to work:
- `tmux`
- `gdb`
- `python3`

## Install
```bash
git clone https://github.com/stolenfootball/PwnSetup.git
cd PwnSetup
chmod +x setup.sh
./setup.sh
```

## Use
Start a tmux instance, then run gdb.  That's it!
