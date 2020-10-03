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
5. Agregar a cron la siguiente linea 
```
$ crontab -e 
0 * * * * $HOME/internet-monitor/internet-monitor.sh >/dev/null 2>&1
```
(editor VIM, hay que presionar "`i`" para poder entrar a modo de edición (insert)
(salir del editor VIM con `:wq!`) -> write + quit

6. verificar que el cron esta cargado:
```
$ crontab -l
0 * * * * $HOME/internet-monitor/internet-monitor.sh >/dev/null 2>&1
```
7. Un archivo con la información debe de ser generado:
```
$ cat internet_test_*.csv
Server ID,Sponsor,Server Name,Timestamp,Distance,Ping,Download,Upload,Share,IP Address
2848,Cu.be Solutions,Diegem,2020-10-03T17:59:08.233631Z,3.4748759144932597,41.764,3618064.9478024715,4243740.158341169,,10.10.10.10
```
o
```
csvtool readable internet_test_*.csv | view -
Server ID Sponsor                   Server Name           Timestamp                   Distance           Ping  Download           Upload            Share IP Address
17108     INFINITUM                 Ciudad Nezahualcoyotl 2020-10-03T17:40:23.733048Z 4.745172453975609  9.611 202611272.06444505 47608491.30210417       192.168.1.1
2047      AXTEL                     Mexico City           2020-10-03T17:50:01.609228Z 12.492815979786302 8.536 201610165.69088763 80639706.36892192       192.168.1.1
17108     INFINITUM                 Ciudad Nezahualcoyotl 2020-10-03T17:56:28.862731Z 4.745172453975609  8.582 202559347.01085573 66416104.06181754       192.168.1.1
```
