FROM quay.io/wildfly/wildfly
MAINTAINER Gerardo Chavez <gchavezt@redhat.com>
ADD target/helloworld.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]