
if [ ! -e $uData/config/config.ini ]; then
	#cho "touchhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
	touch $uData/config/config.ini
fi

dParams="-d -p 8070:80 \
	--link omekadb:db \
	-v $uData/config/config.ini:/var/www/html/application/config/config.ini \
	-v $uData/plugins:/var/www/html/plugins \
	"
	
#	