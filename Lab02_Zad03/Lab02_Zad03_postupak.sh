# 1.
# Pokrenite proces u foreground-u te ga zatim posaljite u pozadinu. Objasnite kako
# ste to napravili. Kako biste proces poslali u pozadinu odmah pri pokretanju?

# ./lab02-3.sh		pokretanje procesa u foreground-u
# CTRL + Z		stopiranje procesa
# bg			slanje procesa u pozadinu

# ./lab02-3.sh &	pokretanje procesa u pozadini

# 2.
# Nastavite izvodenje procesa u pozadini. Kako ste to izveli?

# fg			slanje procesa u foreground

# 3.
# Pronadite PID pokrenute skripte i njezin nice broj. Promijenite ga. Objasnite
# sto ste s time postigli.

# jobs -l		PID pokrenute skripte (2 stupac)

# ps -l $(pid skripte kojeg smo dobili iz prethodne linije) 	(stupac NI)

# sudo renice -n -1 $(PID)		povecao sam prednost sljedeceg procesa za 1 (negativni brojevci veca prednost dok su pozitivni manja)

# 4.
# Dok se proces izvodi u foregroundu pritisnite kombinaciju tipki CTRL+C. Koji je
# signal poslan? Sto se dogodilo i zasto? Sto morate uciniti kako biste prekinuli
# proces pomocu signala?

# poslan je signal SIGINT

# ispisano je "Try harder!" na standardni izlaz i nastavio se izvodit proces,
# default ponasanje SIGINT-a je gasenje procesa ali u skripti je izhandlano 
# primanje signala SIGINT i SIGTERM na nacin da se proces ne zagasi nego
# se ispise "Try harder"  

# kill -9 $(pid) 		slanje SIGKILL signala

# 5.
# Ugasite terminal. Objasnite sto se dogodilo s procesom. Koji signal mu je poslan?
# Navedite barem jedan nacin kako biste pokrenuli proces i osigurali nastavak
# njegova izvodenja nakon gasenja terminala.

# proces se zagasio

# poslan mu je signal SIGHUP

# ./lab02-3.sh & disown

