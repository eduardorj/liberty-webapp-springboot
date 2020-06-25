FROM websphere-liberty:webProfile8

COPY --chown=1001:0  server.xml /config/

COPY --chown=1001:0  hello-world-ear-1.0-20200624.191550-12.ear /config/dropins/

RUN configure.sh