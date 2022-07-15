FROM quay.io/keycloak/keycloak:18.0.2

COPY ./themes/inclusion-connect/ /opt/jboss/keycloak/themes/inclusion-connect/

ADD run.sh /opt/run.sh
ENTRYPOINT /opt/run.sh
CMD ["-b", "0.0.0.0", "--server-config", "standalone-ha.xml"]