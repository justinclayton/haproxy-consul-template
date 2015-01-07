#!/bin/sh

/bin/consul-template -consul ${CONSUL_CLUSTER} -template ${TEMPLATE}:/usr/local/etc/haproxy/haproxy.cfg:${COMMAND}
