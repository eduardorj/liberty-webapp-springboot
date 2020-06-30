FROM websphere-liberty

COPY --chown=1001:0  server.xml /config/

COPY --chown=1001:0  Sample1.war /config/dropins/

#RUN configure.sh
