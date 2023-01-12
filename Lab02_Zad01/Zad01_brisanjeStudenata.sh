input="studenti"

sudo chmod ugo=rwx /home/studenti

while read user;
do
        echo "$user";
        sudo deluser --remove-home "$user"
done < "$input"

sudo chmod go=rx /home/studenti

