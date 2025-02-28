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

## Notes
This sometimes fails on older versions of Debian.  If you see an error during install, do the following:
1. Run `revert.sh`
2. Install Rust from the internet, not apt.  This can be done with the following command:
   - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
   - Use the default option (1) when installing Rust.
   - When the installer finishes, run `source $HOME/.cargo/env`
3. Run `sudo apt install libssl-dev`

Now rerun `setup.sh`, and everything should install properly.
