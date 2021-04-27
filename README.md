# SQL to NoSQL Transformation

---

- Names : <a href="https://github.com/smeet07"> Smeet Nagda </a>,<a href="https://github.com/mrpandya"> Manan Pandya </a>
- Roll Number : 1911032, 1911033
- Class : SY CS A
- Course : RDBMS
- Faculty Name : Vaibav Vasani
- College Name : KJ Somaiya College of Engneering

---

### How to Execute:
1. ##### Clone the repo:

```
$ git clone https://github.com/mrpandya/sql-to-nosql-transformation
```

2. ##### Go to the directory:

```
$ cd sql-to-nosql-transformation
```
3. ##### Open the MySQL CLI

- for Windows

```
$ mysql.exe –u<username> –p
```

- for Linux 

for root login

```
$ sudo mysql 
```

for user login

```
$ mysql -u <user>
```

> Enter the password to login to the shell

4. ##### Create database :

```
mysql> CREATE DATABASE <database_name>
mysql> USE <database_name>
```

5. ##### Run the SQL Queries :

- Create the tables 

```
mysql>\. create-usertable.sql
mysql>\. create-itemtable.sql
mysql>\. create-transtable.sql
```

This will create the tables required for the experiment. It will also insert a few rows into the tables as well.
<br>
To check the data in the tables run:
```
mysql>SELECT * FROM user_data;
mysql>SELECT * FROM items;
mysql>SELECT * FROM transactions;
```

- Create a view of the joins of all the 3 tables

```
mysql>\. create_view.sql
```
To check the data in the view run:
```
mysql>SELECT * FROM nosql_schema_view;
```

- Create a table with the structure of a column based NoSQL table.

```
mysql>\. create_nosql.sql
```

To check the data in the table run:
```
mysql>SELECT * FROM nosql_schema_table;
```

- Analyze the SELECT query in the view:

```
mysql>\. ananlyze_view.sql
```

- Ananlyze the SELECT query in the table:

```
mysql>\. analyze_nosql.sql
```

> Since the data in the tables is very less, the difference in the tables wont be significant. Thus to add lots of data in the tables run the following commands

To enter the users and items :
```
mysql>\. insert_data.sql
```

To generate the transactions we will first run the python script that will generate the `insert_trans_data.sql` file to add the data in the table.

> Before  running the script mention the number of rows you want to insert by updating the value of TOTAL_TRANSACTIONS variable in the create_data.py file

**open another terminal in the same directory and run the python script**

- for Windows :
```
$ py create_data.py
```

- for Linux :
```
$ python  create_data.py
```

**once the insert_trans_data.sql file is generated switch back to the mysql terminal to add the rows run the following query**

```
mysql>\. insert_trans_data.sql
```

> This will take some while depending on the number of rows

Once the data is inserted in the transactions table. Run the following query to duplicate the rows in the nosql_schema_table.

```
mysql>\. create_nosql.sql
```

##### Once the rows are duplicated we can now analyze the tables by following the queries given above.

---



