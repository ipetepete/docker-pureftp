# Compiling pureftp with symlink ability
## To run

    docker run -it --rm --name puref -v $(pwd)/ftp:/ftp -p 31:21 -p 20000-20059:30000-30059 -e PUBLICHOST=$PUBLICHOST purecentos


To run the server from the commandline (within docker):

	pure-ftpd -j -d -p 3000:3009 &





