FROM haproxy

ADD consul-template /bin/consul-template
ADD *.sh /
ADD *.ctmpl /

ENV CONSUL_CLUSTER localhost:8500
ENV TEMPLATE /haproxy.ctmpl
ENV COMMAND /haproxy.sh
CMD ["/consul-template.sh"]
