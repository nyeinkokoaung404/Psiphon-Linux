#! /bin/bash

#Download neccessary scripts and files
echo "Starting downloads"
wget https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/linux/psiphon-tunnel-core-x86_64 --quiet
wget https://raw.githubusercontent.com/nyeinkokoaung404/Psiphon-Linux/main/psiphon.config --quiet
wget https://raw.githubusercontent.com/nyeinkokoaung404/Psiphon-Linux/main/psiphon.sh --quiet
echo "Downloads finished"

echo " "
echo "Installing"

#Give these files the executable permission
chmod +x ./psiphon-tunnel-core-x86_64
chmod +x ./psiphon.sh 
echo "Installation finished"

echo " "
echo "Running post install checks"
echo " "
echo "Checking if files exist (Phase 1/2)"
if test -f psiphon-tunnel-core-x86_64; then
  echo "Psiphon binary found"
else "ERROR: Psiphon binary not found"
fi

if test -f psiphon.config; then
  echo "Psiphon configuration found"
else "ERROR: Psiphon configuration not found"
fi

if test -f psiphon.sh; then
  echo "Psiphon startup script found"
else "ERROR: Psiphon startup script not found"
fi

echo " "
echo "Checking if correct permssions have been applied (Phase 2/2)"

if test -x psiphon-tunnel-core-x86_64;
then
    echo "Psiphon binaries have correct permissions"
else
    echo "ERROR: Psiphon binaries do not have required permissions"
fi

if test -x psiphon.sh;
then
    echo "Psiphon startup file has correct permissions"
else
    echo "ERROR: Psiphon startup file does not have required permission"
fi

echo " "
#Finish installer and give message
echo "Psiphon Linux installation successfully completed. Run sudo ./psiphon.sh to start the program. Please allow a reasonable amount for Psiphon to connect as it may take a while"
