mkdir $HOME/.pwnconfig
cp ./splitmind.conf $HOME/.pwnconfig

# Download/setup pwndbg
echo ""
echo "##########################################"
echo "#                                        #"
echo "#           Installing PwnDbg            #"
echo "#                                        #"
echo "##########################################"
echo ""
git clone https://github.com/pwndbg/pwndbg.git $HOME/.pwnconfig/pwndbg
chmod +x $HOME/.pwnconfig/pwndbg/setup.sh

cd $HOME/.pwnconfig/pwndbg
./setup.sh

# Download splitmind
echo ""
echo "##########################################"
echo "#                                        #"
echo "#         Installing Splitmind           #"
echo "#                                        #"
echo "##########################################"
echo ""

git clone https://github.com/jerdna-regeiz/splitmind.git $HOME/.pwnconfig/splitmind

# Apply everything
echo ""
echo "##########################################"
echo "#                                        #"
echo "#            Applying Configs            #"
echo "#                                        #"
echo "##########################################"
echo ""

cp $HOME/.gdbinit $HOME/.pwnconfig/.gdbinit.old

echo "source $HOME/.pwnconfig/pwndbg/gdbinit.py" >> $HOME/.gdbinit 
echo "source $HOME/.pwnconfig/splitmind/gdbinit.py" >> $HOME/.gdbinit
cat $HOME/.pwnconfig/splitmind.conf >> $HOME/.gdbinit

echo ""
echo "##########################################"
echo "#                                        #"
echo "#               Finished!                #"
echo "#                                        #"
echo "##########################################"
echo ""
