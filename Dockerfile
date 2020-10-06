FROM ubuntu:focal

RUN apt-get update \
	&& apt-get install -y --no-install-recommends python3-openstackclient \
	&& rm -rf /var/lib/apt/lists/*

VOLUME ["/etc/openstack"]


ENTRYPOINT ["openstack"]
