# docker-coreDNS
(coreDNS)[https://coredns.io/] runs in docker container

## How to run coreDNS 
`docker run -p 53:53 -p 53:53/udp coredns`

## How to test coreDNS 
`dig example.net A +short @localhost`
this should retun 192.168.3.241

`dig api.example.net A +short @localhost` 
this should return 192.168.3.242

`dig store.example.net A +short @localhost`
this should return 192.168.3.243

If the zone is not define in the configuraiton file, it will proxy the request to google dns (8.8.8.8)