# GL_ProCamp_EntryTask
#### GL DevOps ProCamp entry task

#### 1. Metrics 
Written using Python v3 
The script uses the psutil library. Takes 1 argument as an input. If the argument == `mem` prints **"Top 3 most memory consuming processes"** information and the **general data on memory**
When the argument == `cpu` prints the **"Top 3 processes which consumed the most CPU time"** and the **general CPU information**
When the argument is not set - prints the **'Null arg'** message

#### Install psutil module for python3 
`sudo apt-get install gcc python3-dev pip3 install psutil`

**Example:** 
`./metrics cpu`

**Output:** 
```
`CPU info Top 3 processes which consumed the most CPU time:
[(7,   'rcu_sched', 14.870000000000001),
 (254, 'systemd-journald', 300.86),
 (685, 'python3', 434.04999999999995)]`

Total info

cpu system: 508.95
cpu idle: 169769.43
cpu user: 441.25
cpu guest: 0.0
cpu iowait: 587.13
cpu stolen: 0.0
```

#### 2. Dockerfile
**metric-monitor: 0.0.5**
A container has the Python v3 script running. When the container starts, it prints out information about processes running on the host machine from within container environment

### Getting Started
These instructions will cover usage information and for the docker container https://hub.docker.com/r/malyamkin/metric-monitor - docker hub repository

### Prerequisites
In order to run this container, you'll need docker installed.

 - Windows
 - OS X
 - Linux

 ###  Usage
 
**Container Parameters**
List the different parameters available to your container
`docker run -pid=host malyamkin/metric-monitor:0.0.5 parameters`

`docker run -pid=host malyamkin/metric-monitor:0.0.5 cpu`
`docker run -pid=host malyamkin/metric-monitor:0.0.5 mem`

**Environment Variables**
`metricarg` - takes `cpu` or `mem` strings as the input

**Useful File Locations**
`/usr/src/` - working directory used to copy the script file inside

**Built With**
 - Python v3.5.3
 - psutil v5.6.2
 
**Authors**
Pavlo Havrylenko

**TODO**
Add `-v /etc/passwd:/usr/src/passwd` in `docker run` command - из файла passwd from hos**t можно resolves uid to username.**
