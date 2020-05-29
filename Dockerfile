FROM websphere-liberty:webProfile8

RUN mkdir /config/dropins/spring

COPY --chown=1001:0  server.xml /config/

COPY --chown=1001:0  demo-0.0.1-SNAPSHOT.jar /config/dropins/spring/

RUN installUtility install springBoot-2.0

RUN configure.sh