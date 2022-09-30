#!/bin/bash
set -e
#chmod +x ./chechsum_new.txt
#chmod +x ./chechsum.txt
cat /home/dashka/work/new.json | sha256sum  > /home/dashka/work/chechsum_new.txt
cat /home/dashka/work/json.json | sha256sum  > /home/dashka/work/chechsum.txt

if cmp -s ./chechsum.txt ./chechsum_new.txt
then
   echo "The Jason file data has not changed"
else
   echo "I must doing parsing!!"
fi
