# surfeasy/puppet_base
#
# VERSION 0.0.1

# Create a base image for puppetdb and puppetserver 
FROM ubuntu:14.04 
MAINTAINER Siwei Wang <swang@surfeasy.com>

# Setup
RUN mkdir /coreDNS
WORKDIR /coreDNS

# Install coreDNS
ADD . .
EXPOSE 53

CMD ["./coredns",  "-log",  "stdout",  "-conf", "Corefile"]
