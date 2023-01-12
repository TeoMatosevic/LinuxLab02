# !/ bin / bash

# Ispis PID - a skripte

echo $$ > /tmp/pid_primatelj

# Inicijalizacija varijabli i postavljanje signal handlera

kapsule=0
komprimirajuce=0
sumece=0

trap 'let kapsule=kapsule+1' SIGRTMIN

trap 'let komprimirajuce=komprimirajuce+1' SIGRTMIN+1

trap 'let sumece=sumece+1' SIGRTMIN+2

trap 'clear; echo -e "kapsula ima: $kapsule\nkomprimirajucih tableta ima: $komprimirajuce\nsumecih tableta ima: $sumece"; exit' SIGINT

while true
	do
	# Ispis kolicine za svaku tabletu

	echo -e "kapsula ima: $kapsule\nkomprimirajucih tableta ima: $komprimirajuce\nsumecih tableta ima: $sumece"


	sleep 1
	clear
done
