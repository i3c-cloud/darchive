

dbLink="--link omekadb:db";

if [ "x$3" != "x" ]; then
	dbLink="--link $3:db";	
fi	

#docker run --rm --name  pma -d --link mdb:db -p 8081:80 
#
dParams="-d -p 8082:80 --rm $dbLink \
	-e VIRTUAL_PORT=80 \
	";

i3cImage='phpmyadmin/phpmyadmin';
doCommand=true
