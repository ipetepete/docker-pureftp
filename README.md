# Compiling pureftp with ldap & symlink ability

The compiler will look for ldap.h and lder.h in the given path at includes and lib directories. Requires openldap + openldap-devel.

	./configure --with-ldap=/usr/ --with-virtualchroot

## BYOL: Bring your own ldap

This build will run with anonymous login enabled, but if you want more control, it's got ldap support baked in. Just supply your own oconfig in a `./configs` directory. Sample ldap config:

  LDAPServer ldap.c9x.org
  LDAPPort   389
  LDAPBaseDN cn=Users,dc=c9x,dc=org
  LDAPBindDN cn=Manager,dc=c9x,dc=org
  LDAPBindPW r00tPaSsw0rD
  LDAPDefaultUID 500
  LDAPDefaultGID 100

More info here [https://github.com/gfto/pure-ftpd/blob/master/README.LDAP](https://github.com/gfto/pure-ftpd/blob/master/README.LDAP)

## To run

  docker run -it --rm --name puref -v $(pwd)/configs/pureftpd-ldap.conf:/etc/pureftpd-ldap.conf -v $(pwd)/ftp:/ftp -p 31:21 -p 20000-20059:30000-30059 -e PUBLICHOST=$PUBLICHOST purecentos


To run the server from the commandline (within docker):

	pure-ftpd -j -d -l ldap:/etc/pureftpd-ldap.conf -p 3000:3009 &





