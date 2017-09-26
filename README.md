# cdcc
Continuous Deployment, Continuous Certification. Using external volume to keep certification.

Example
=======

On Hyper.sh

```
version: '2'

services:
  cdcc:
    image: matoba/cdcc
    ports:
      - '80:80'
      - '443:443'
    links:
      - webapp:webapp1
    volumes: 
      - cdcc:/etc/letsencrypt
    environment:
      DOMAIN: 'example.com'
      E_MAIL: 'foobar@example.com'
      LINK_NAME: 'webapp1'
    fip: 199.245.56.122
    size: s4
  webapp:
    image: some_webapp
```
