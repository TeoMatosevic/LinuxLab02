sudo addgroup studenti
sudo mkdir /home/studenti
sudo chmod go=rx /home/studenti
sudo chown stjepan:studenti /home/studenti
sudo mkdir /home/studenti/studenti-shared
sudo chmod ug=rwx,o=t /home/studenti/studenti-shared
sudo chown stjepan:studenti /home/studenti/studenti-shared

sudo mkdir skeleton
sudo cp -r /etc/skel/. skeleton
sudo mkdir conf
sudo cp /etc/adduser.conf conf 
sudo sed -i 's#/etc/skel#skeleton#' conf/adduser.conf
sudo mkdir skeleton/Documents
sudo mkdir skeleton/Download
sudo ln -s /home/studenti/studenti-shared skeleton/Shared

