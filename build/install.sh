rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y vim zsh git gcc make

# this should already be compiled, just need to install	
cd /build/pure-ftpd-1.0.46
make install

yum install -y rsyslog
echo "" >> /etc/rsyslog.conf
echo "#PureFTP Custom Logging" >> /etc/rsyslog.conf

mkdir -p /ftp/{users,anon}

# add ftp anon user
usermod -m -d /ftp/anon ftp
chown -R ftp:ftp /ftp/anon

