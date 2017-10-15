add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:vajdics/netbeans-installer
add-apt-repository -y ppa:maarten-fonville/android-studio

apt-get -y update && apt-get -y upgrade

###### JAVA
apt -y install oracle-java8-installer
apt -y install oracle-java8-set-default
source /etc/profile
apt -y install netbeans-installer
apt -y install android-studio