# FROM ubuntu:22.04


# FROM quay.io/eduk8s/base-environment:201203.020609.1ab533d
FROM registry.tanzu.vmware.com/tanzu-application-platform/tap-packages@sha256:a8870aa60b45495d298df5b65c69b3d7972608da4367bd6e69d6e392ac969dd4
# FROM quay.io/eduk8s/base-environment:master
COPY --chown=1001:0 . /home/eduk8s/


USER root
      
RUN chmod +x init.sh

RUN ./init.sh

RUN echo "alias k=kubectl" >> /root/.profile 


RUN mv /home/eduk8s/workshop /opt/workshop

RUN fix-permissions /home/eduk8s
