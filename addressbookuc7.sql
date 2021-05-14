Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.24 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+----------------------+
| Database             |
+----------------------+
| address_book_service |
| information_schema   |
| mysql                |
| payroll_service      |
| performance_schema   |
| sakila               |
| sys                  |
| test                 |
| world                |
+----------------------+
9 rows in set (0.01 sec)

mysql> use address_book_service
Database changed
mysql> select database();
+----------------------+
| database()           |
+----------------------+
| address_book_service |
+----------------------+
1 row in set (0.00 sec)

mysql> desc adressbook;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int unsigned | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(20)  | NO   |     | NULL    |                |
| last_name  | varchar(20)  | YES  |     | NULL    |                |
| address    | varchar(20)  | NO   |     | NULL    |                |
| city       | varchar(20)  | NO   |     | NULL    |                |
| zip        | bigint       | NO   |     | NULL    |                |
| contact    | bigint       | NO   |     | NULL    |                |
| email      | varchar(100) | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> insert into addressbook(first_name,last_name,address,city,zip,contact,email)values
    -> ('tanvi','sharma','kaushambi','gzb',201009,2892192870,'absv@gmail.com'),
    -> ('shama','saxena','mawai','gzb',2729180,7329822099,'ahjs@gmail.com');
ERROR 1146 (42S02): Table 'address_book_service.addressbook' doesn't exist
mysql> create addressbook;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'addressbook' at line 1
mysql> create table addressbook;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> desc addressbook;
ERROR 1146 (42S02): Table 'address_book_service.addressbook' doesn't exist
mysql> insert into addressbook(first_name,last_name,address,city,zip,contact,email)values
    -> ('tanvi','sharma','kaushambi','gzb',201009,2892192870,'absv@gmail.com'),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> insert into adressbook(first_name,last_name,address,city,zip,contact,email)valuess
    -> ('tanvi','sharma','kaushambi','gzb',201009,2892192870,'absv@gmail.com'),
    -> ('shakti','sharma','kaushambi','gzb',201009,2892192870,'absv@gmail.com');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'valuess
('tanvi','sharma','kaushambi','gzb',201009,2892192870,'absv@gmail.com'),' at line 1
mysql> desc adressbook;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int unsigned | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(20)  | NO   |     | NULL    |                |
| last_name  | varchar(20)  | YES  |     | NULL    |                |
| address    | varchar(20)  | NO   |     | NULL    |                |
| city       | varchar(20)  | NO   |     | NULL    |                |
| zip        | bigint       | NO   |     | NULL    |                |
| contact    | bigint       | NO   |     | NULL    |                |
| email      | varchar(100) | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> select * from adressbook;
Empty set (0.04 sec)

mysql> insert into adressbook(first_name,last_name,address,city,zip,contact,email)values
    -> ('tanvi','sharma','kaushambi','gzb',201009,2892192870,'absv@gmail.com'),
    -> ('shama','saxena','mawai','gzb',2729180,7329822099,'ahjs@gmail.com');
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from adressbook;
+----+------------+-----------+-----------+------+---------+------------+----------------+
| id | first_name | last_name | address   | city | zip     | contact    | email          |
+----+------------+-----------+-----------+------+---------+------------+----------------+
|  1 | tanvi      | sharma    | kaushambi | gzb  |  201009 | 2892192870 | absv@gmail.com |
|  2 | shama      | saxena    | mawai     | gzb  | 2729180 | 7329822099 | ahjs@gmail.com |
+----+------------+-----------+-----------+------+---------+------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from adressbook where city = 'gzb';
+----+------------+-----------+-----------+------+---------+------------+----------------+
| id | first_name | last_name | address   | city | zip     | contact    | email          |
+----+------------+-----------+-----------+------+---------+------------+----------------+
|  1 | tanvi      | sharma    | kaushambi | gzb  |  201009 | 2892192870 | absv@gmail.com |
|  2 | shama      | saxena    | mawai     | gzb  | 2729180 | 7329822099 | ahjs@gmail.com |
+----+------------+-----------+-----------+------+---------+------------+----------------+
2 rows in set (0.00 sec)

mysql> alter table adressbook
    -> add type varchar(20);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from adressbook;
+----+------------+-----------+-----------+------+---------+------------+----------------+------+
| id | first_name | last_name | address   | city | zip     | contact    | email          | type |
+----+------------+-----------+-----------+------+---------+------------+----------------+------+
|  1 | tanvi      | sharma    | kaushambi | gzb  |  201009 | 2892192870 | absv@gmail.com | NULL |
|  2 | shama      | saxena    | mawai     | gzb  | 2729180 | 7329822099 | ahjs@gmail.com | NULL |
+----+------------+-----------+-----------+------+---------+------------+----------------+------+
2 rows in set (0.00 sec)

mysql> update adressbook
    -> set type = 'self' where first_name = 'tanvi';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update adressbook set type = 'friend' where first_name = 'shama';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from adressbook;
+----+------------+-----------+-----------+------+---------+------------+----------------+--------+
| id | first_name | last_name | address   | city | zip     | contact    | email          | type   |
+----+------------+-----------+-----------+------+---------+------------+----------------+--------+
|  1 | tanvi      | sharma    | kaushambi | gzb  |  201009 | 2892192870 | absv@gmail.com | self   |
|  2 | shama      | saxena    | mawai     | gzb  | 2729180 | 7329822099 | ahjs@gmail.com | friend |
+----+------------+-----------+-----------+------+---------+------------+----------------+--------+
2 rows in set (0.01 sec)

mysql> select city,count(city) from adressbook group by city;
+------+-------------+
| city | count(city) |
+------+-------------+
| gzb  |           2 |
+------+-------------+
1 row in set (0.02 sec)

mysql>