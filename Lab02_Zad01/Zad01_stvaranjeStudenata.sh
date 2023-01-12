input=$(cat studenti)

sudo chmod ugo=rwx /home/studenti

for user in $input
do
        echo $user
        sudo adduser --debug --gecos "" --shell /bin/bash --conf conf/adduser.conf --home /home/studenti/"$user" --disabled-login "$user"
        sudo echo "$user":JakaLozinka9 | sudo chpasswd
        sudo usermod -aG studenti "$user"
        sudo chmod u=rwx,go-rwx /home/studenti/"$user"
done

sudo chmod go=rx /home/studenti

