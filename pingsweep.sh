#!bin/bash



if [ -z "$1" ]; then
    echo "Por favor introduce los primeros octetos xxx.xxx.xxx"   
exit 1

else

for i in $(seq 1 254) ;do (ping -c 1 $1.$i | grep "bytes from" &) ; 
done

fi


#EXEMPLE
#┌──(kali㉿kali)-[~]
#└─$ sh ./pingsweep.sh 192.168.159

