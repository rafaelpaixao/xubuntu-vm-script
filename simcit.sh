apt -y remove firefox
apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF

apt-get -y update && apt-get -y upgrade

apt -y install git

apt -y install postgresql postgresql-contrib pgadmin3

apt -y install python3-pip build-essential libssl-dev libffi-dev python-dev
pip3 -q install virtualenv django pylint pylint-django pipenv

###### PHP
apt -y install curl
curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer global require "laravel/installer"


curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt -y install nodejs
npm i -g npm node-gyp phantomjs-prebuilt gulp vue-cli create-react-app @angular/cli cordova



apt -y install chromium-browser
echo 'CHROMIUM_FLAGS="--password-store=basic"' >> /etc/chromium-browser/default

apt -y install code
echo "alias vscode='code . --disable-gpu'" >> ~/.bashrc

# POSTMAN
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
ln -s /opt/Postman/Postman /usr/bin/postman

reboot