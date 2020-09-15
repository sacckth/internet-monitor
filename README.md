# internet-monitor
Herramienta para monitorear un enlace a internet
1. Instalar paquetes
`$ sudo apt install git python3; #(ubuntu)` o 
`$ sudo yum install git  python3; #(centos)`
2. Clonar este repositorio:
```
git clone https://github.com/sacckth/internet-monitor.git
```
3. Asegurarse que el script tiene permisos de ejecución:
```
$ sudo chmod +x internet-monitor.sh; # una sola vez
```
4. Correr el script:
```
$ ./internet-monitor.sh
```
Agregar a cron la siguiente linea 
```
$ crontab -e 
0 * * * * $HOME/internet-monitor/internet-monitor.sh >/dev/null 2>&1
```
(editor VIM, hay que presionar "`i`" para poder entrar a modo de edición (insert)
(salir del editor VIM con `wq!`) -> write + quit

5. verificar que el cron esta cargado:
```
$ crontab -l
0 * * * * $HOME/internet-monitor/internet-monitor.sh >/dev/null 2>&1
```
6. Un archivo con la información debe de ser generado:
```
$ cat internet_test_*.log
2020-09-15T17:58:55-Resultados #  Ping: 4.626ms Download:170.49Mbps Upload:94.44Mbps
```
