default: docker-build

docker-build:
	docker build -t haproxy-consul-template .

consul-template.tgz:
	curl -L -o consul-template.tgz https://github.com/hashicorp/consul-template/releases/download/v0.5.1/consul-template_0.5.1_linux_amd64.tar.gz

consul-template: consul-template.tgz
	tar xOzf consul-template.tgz consul-template_0.5.1_linux_amd64/consul-template > consul-template
