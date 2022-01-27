@ECHO OFF
SET LXDISTRO=Ubuntu-20.04
WSL -d %LXDISTRO% -- ip addr show eth0 ^| grep -oP '(?^<=inet\s)\d+(\.\d+){3}' > IP.TMP