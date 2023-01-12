# !/ bin / bash

# Citanje PID - a druge skripte

if [ ! -f "/tmp/pid_primatelj" ]; then
	echo "Prvo treba pokrenuti skriptu koja prati nadolazece tablete."
	exit;
fi

pid=$(cat /tmp/pid_primatelj)

rm /tmp/pid_primatelj

while true
do
	sleep 1
	sigval=$(expr 1 + $RANDOM % 3)

	if [ ! -d "/proc/${pid}" ]
	then
		echo "Skripta primatelja je obustavljena."
		exit
	fi

	# Slanje odgovarajuceg signala
	case "$sigval" in
		"1") kill -34 "$pid"
		;;
		"2") kill -35 "$pid"
		;;
		"3") kill -36 "$pid"
		;;
	esac
done
