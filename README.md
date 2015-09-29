vagrant-xe11g
=============

Разворачивание Oracle XE 11g на CentOS под управлением VirtualBox.

Исходный проект
https://github.com/matthewbaldwin/vagrant-xe11g

Подготовка к разворачиванию
1. Установка VizrtualBox
https://www.virtualbox.org/
2. Установка Git
http://git-scm.com/download/win или https://git-for-windows.github.io/
3. Установка Vagrant.
http://www.vagrantup.com/
3.1. Установка плагина для доступа по SSH
3.1.1. Скачиваем putty
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html
3.1.2. Добавляем путь к Putty в переменную PATH
3.1.3. Скачиваем плагин для Vagrant
https://github.com/nickryand/vagrant-multi-putty
3.1.4. Устанавливаем плагин
vagrant plugin install vagrant-multi-putty
Если в момент запуска Vagrant возникают ошибки, то необходимо удалить файл %USERPROFILE%\.vagrant.d\plugins.json и повторно установить плагин.
4. Установка Puppet
https://downloads.puppetlabs.com/windows/
5. Скачиваем в папку oracle\software\ дистрибутив Oracle XE 11g
Файл oracle-xe-11.2.0-1.0.x86_64.rpm, доступный по адресу http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html


Работа с виртуальной машиной
1. Аккаунты
1.1. Пользователи OS
root:vagrant, vagrant:vagrant
1.2. DBA
oracle:oracle

2. Использование
2.1. Vagrant
2.1.1. Запуск
vagrant up
2.1.2. Останов
vagrant halt
2.2. Доступ к Oracle с хоста
2.2.1. http://localhost:8080/apex
Workspace: Internal
User Name: admin
Password: oracle
2.2.2. Клиент 
hostname localhost
sid XE


Дополнительная информация
Installing Oracle XE 11g
on CentOS
http://tuhrig.de/3-ways-of-installing-oracle-xe-11g-on-ubuntu/
https://github.com/matthewbaldwin/vagrant-xe11g

on Ubuntu
https://technology.amis.nl/2014/07/29/fastest-way-to-a-virtual-machine-with-jdeveloper-12-1-3-and-oracle-database-xe-11gr2-on-ubuntu-linux-64-bit/
или
https://technology.amis.nl/2014/06/26/provisioning-an-oracle-11g-database-virtualbox-vm-with-vagrant-and-puppet-for-dummies/
