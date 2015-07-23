# Dokerfile for the CASE 01480776
# https://access.redhat.com/support/cases/#/case/01480776

FROM rhel7
# FROM openshift/base-centos7

RUN mkdir -p /opt/demo/bin
WORKDIR /opt/demo/bin

# Install files maintained in git
ADD run /opt/demo/bin/run
RUN chmod ugo+x /opt/demo/bin/run

EXPOSE 1234

CMD ["/opt/demo/bin/run"]
