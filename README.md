# SimpleDatabase-GUI
A Database that connects to a UI to change records
### MySQL+phpMyAdmin+Docker Instructions ###
```docker run --name db-easthillshoppingmall -p 33060:33060 -e MYSQL_ROOT_PASSWORD=hacker -d mysql```

```docker exec -it db-easthillshoppingmall mysql -uroot -phacker```
```CREATE DATABASE easthillshoppingmall;```

### phpMyAdmin Instructions ###
```docker run --name phpmyadmin -d -p 8080:80 -e PMA_HOST=db-easthillshoppingmall phpmyadmin/phpmyadmin:latest```

### Create Network ###
```docker network create project-network```


```docker network connect project-network db-easthillshoppingmall```
```docker network connect project-network phpmyadmin-easthillshoppingmall```

### Export database ###
```docker exec a254875a527f503e5d9d310ead573d5b97964f1b699f674b620c357393d670a6 /usr/bin/mysqldump -u root --password=hacker easthillshoppingmall > easthillshoppingmall.sql```



