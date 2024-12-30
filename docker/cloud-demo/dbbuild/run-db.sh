docker run
  -d
  -e MYSQL_ROOT_PASSWORD=test
  -e MYSQL_USER=testuser
  -e MYSQL_PASSWORD=testpass
  -e MYSQL_DATABASE=webtest
  --name phpdbsvc
  --network test
  -v ./my.cnf:/etc/mysql/conf.d/custom.cnf
  -v ./create_db_webtest.sql:/docker-entrypoint-initdb.d/webtest.sql
myregistry.com/myproj/phpdb:v2
