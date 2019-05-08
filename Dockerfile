FROM python:3
MAINTAINER Pavel Havrylenko
ADD metrics /usr/src/metrics
RUN pip3 install psutil
ENTRYPOINT [ "python3", "/usr/src/metrics" ]
CMD [ ]
