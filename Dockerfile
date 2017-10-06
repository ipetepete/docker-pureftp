from centos:7

copy ./build /build

run /build/install.sh

CMD /build/run.sh -c 40 -C 40 -P $PUBLICHOST  -l ldap:/etc/pureftpd-ldap.conf -j -R -p 30000-30059
# optional:ly add -tls 1 to enable tls support


expose 21 30000-30059
