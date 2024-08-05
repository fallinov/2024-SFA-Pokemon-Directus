/* Donne les droits à l'utilisateur root et à l'utilisateur directus */
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'rootpassword';
CREATE USER 'directus'@'%' IDENTIFIED WITH mysql_native_password BY 'directus';
GRANT ALL PRIVILEGES ON *.* TO 'directus'@'%';
FLUSH PRIVILEGES;
