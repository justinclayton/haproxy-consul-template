#!/bin/sh

/usr/local/sbin/haproxy -D -f /usr/local/etc/haproxy/haproxy.cfg -p /haproxy.pid -sf $(cat /haproxy.pid)
