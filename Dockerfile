#FROM centos/python-35-centos7
FROM python:3.5.7-alpine
RUN pip install --upgrade pip
RUN pip install kube-shell
#RUN mkdir /root/.kube/;
RUN apk add curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.6/bin/linux/amd64/kubectl;
RUN chmod +x ./kubectl
RUN cp ./kubectl /usr/local/bin/kubectl
ADD kube-shell-info.sh /
RUN chmod +x kube-shell-info.sh 
