rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y vim zsh git openldap openldap-devel gcc make

# this should already be compiled, just need to install	
cd /build/pure-ftpd-1.0.46
make install

mkdir -p /ftp/{users,anon}

# add ftp anon user
usermod -m -d /ftp/anon ftp
chown -R ftp:ftp /ftp/anon

