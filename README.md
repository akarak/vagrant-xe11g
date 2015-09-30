# Установка Oracle XE 11g на CentOS под управлением VirtualBox

Исходный проект
https://github.com/matthewbaldwin/vagrant-xe11g

### Подготовка окружения
1. Установка [VizrtualBox](https://www.virtualbox.org/)
2. Установка Git ([1](http://git-scm.com/download/win) или [2](https://git-for-windows.github.io/))
3. Установка [Vagrant](http://www.vagrantup.com)
  1. Установка плагина для доступа по SSH
    1. Загружаем [Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)
    2. Добавляем путь к Putty в переменную PATH
    3. Загружаем [плагин](https://github.com/nickryand/vagrant-multi-putty) для Vagrant
    4. Устанавливаем плагин  
      ```
      vagrant plugin install vagrant-multi-putty
      ```

      Если в момент запуска Vagrant возникают ошибки, то необходимо удалить файл **%USERPROFILE%\.vagrant.d\plugins.json** и повторно установить плагин.
4. Установка [Puppet](https://downloads.puppetlabs.com/windows)
5. Скачиваем в папку **oracle\software** дистрибутив Oracle XE 11g [oracle-xe-11.2.0-1.0.x86_64.rpm](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html)


### Работа с виртуальной машиной
1. Аккаунты
  1. OS: root:vagrant, vagrant:vagrant
  2. DBA: oracle:oracle

2. Использование
  1. Vagrant  
    Если путь к ПО содержать кириллические названия папок, то перед выполнение первой команды необходимо установить подходящую кодировку консоли  
    ```
    chcp 1251
    ```

    1. Запуск  
      ```
      vagrant up
      ```

    2. Останов  
      ```
      vagrant halt
      ```

  2. Доступ к Oracle с хоста
    1. http://localhost:8080/apex  
    Workspace: Internal  
    User Name: admin  
    Password: oracle  
    2. Клиент  
    Hostname: localhost  
    Sid: XE


### Дополнительная информация
Installing Oracle XE 11g
- on CentOS  
  http://tuhrig.de/3-ways-of-installing-oracle-xe-11g-on-ubuntu/  
  https://github.com/matthewbaldwin/vagrant-xe11g

- on Ubuntu  
  https://technology.amis.nl/2014/07/29/fastest-way-to-a-virtual-machine-with-jdeveloper-12-1-3-and-oracle-database-xe-11gr2-on-ubuntu-linux-64-bit/  
  или  
  https://technology.amis.nl/2014/06/26/provisioning-an-oracle-11g-database-virtualbox-vm-with-vagrant-and-puppet-for-dummies/
