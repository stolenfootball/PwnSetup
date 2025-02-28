mkdir $HOME/.pwnconfig


# Download/setup pwndbg
git clone https://github.com/pwndbg/pwndbg.git $HOME/.pwnconfig/pwndbg
chmod +x $HOME/.pwnconfig/pwndbg/setup.sh
$HOME/.pwnconfig/pwndbg/setup.sh

# Download splitmind
git clone https://github.com/jerdna-regeiz/splitmind.git

# Apply everything
echo "source $HOME/.pwnconfig/pwndbg/gdbinit.py" >> $HOME/.gdbinit 
echo "source $HOME/.pwnconfig/splitmind/gdbinit.py\n" >> $HOME/.gdbinit
cat ./splitmind.conf >> $HOME/.gdbinit
