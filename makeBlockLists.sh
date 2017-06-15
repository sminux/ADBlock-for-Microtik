#!/bin/bash

in="./Advertising" && out="./Advertising.txt" && host='127.0.0.1'; echo "/ip dns static ##" > $out && grep '' $in | sed "s/^/add address=$host name=/" >> $out; sed -i "s/.*/& comment=BlockAdvertising/" $out; wc -l $out;

in="./Games" && out="./Games.txt" && host='127.0.0.1'; echo "/ip dns static ##" > $out && grep '' $in | sed "s/^/add address=$host name=/" >> $out; sed -i "s/.*/& comment=BlockGames/" $out; wc -l $out;

in="./Viruses" && out="./Viruses.txt" && host='127.0.0.1'; echo "/ip dns static ##" > $out && grep '' $in | sed "s/^/add address=$host name=/" >> $out; sed -i "s/.*/& comment=BlockViruses/" $out; wc -l $out;

in="./Porn" && out="./Porn.txt" && host='127.0.0.1'; echo "/ip dns static ##" > $out && grep '' $in | sed "s/^/add address=$host name=/" >> $out; sed -i "s/.*/& comment=BlockPorn/" $out; wc -l $out;

