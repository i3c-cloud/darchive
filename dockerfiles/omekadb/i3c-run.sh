
dParams="-d \
	-v $uData/data:/var/lib/mysql \
	--secret masterKey \
	-e MYSQL_ROOT_PASSWORD=masterKey \
	"