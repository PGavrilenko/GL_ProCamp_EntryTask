# GL_ProCamp_EntryTask
GL DevOps ProCamp entry task

№1 Metrics
Написан на Python v3
Скрипт использует библиотеку psutil.
Принимает на вход 1 параметр. 
Если параметр = mem - выводит информацию о "Top 3 most memory consuming processes" и общую информацию о памяти
Если параметр = cpu - выводит информацию о "Top 3 processes which consumed the most CPU time" и общую информацию о процессоре
Если параметр не задан - выдаёт 'Null arg'

#Install psutil module for python3
sudo apt-get install gcc python3-dev
pip3 install psutil

Example:
./metrics cpu

Output:
CPU info
Top 3 processes which consumed the most CPU time:
[(7, 'rcu_sched', 14.870000000000001),
 (254, 'systemd-journald', 300.86),
 (685, 'python3', 434.04999999999995)]


Total info
1) cpu system:           508.95
2) cpu idle:             169769.43
3) cpu user:             441.25
4) cpu guest:            0.0
5) cpu iowait:           587.13
6) cpu stolen:           0.0


№2 Dockerfile

# metric-monitor:0.0.5

Контейнер в котором содержится скрипт на языке Python v3. При запуске контейнера выводится информация about processes running on the host machine from within container environment

## Getting Started

These instructions will cover usage information and for the docker container 
(https://hub.docker.com/r/malyamkin/metric-monitor - docker hub repository)

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

List the different parameters available to your container

```shell
docker run -pid=host malyamkin/metric-monitor:0.0.5 parameters
```



```shell
docker run -pid=host malyamkin/metric-monitor:0.0.5 cpu
```

```shell
docker run give.example.org/of/your/container:v0.2.1 mem
```

```shell
docker run give.example.org/of/your/container:v0.2.1 mem
```

#### Environment Variables

* `metricarg` - принимает значения "cpu" или "mem"

#### Useful File Locations

* `/usr/src/` - рабочая директория, в которую копируется файл скрипта  

## Built With

* List the software v0.1.3
* And the version numbers v2.0.0
* That are in this container v0.3.2

## Authors

* **Havrylenko Pavlo**


## TO DO 
Add -v /etc/passwd:/usr/src/passwd in "docker run" command - из файла passwd from host можно resolves uid to username. 
