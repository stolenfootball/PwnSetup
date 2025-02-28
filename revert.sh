echo "##########################################"
echo "#                                        #"
echo "#           Reverting Changes            #"
echo "#                                        #"
echo "##########################################"
echo ""

if [ -f $HOME/.pwnconfig/.gdbinit.old ]; then
  rm $HOME/.gdbinit
  cp $HOME/.pwnconfig/.gdbinit.old $HOME/.gdbinit
fi

rm -rf $HOME/.pwnconfig
