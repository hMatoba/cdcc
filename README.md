# cdcc
Let's Encrypt for Continuous Deployment

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
    fip: 199.245.56.122
    size: s4
    links:
      - webapp:webapp1
    volumes: 
      - cdcc:/etc/letsencrypt
    environment:
      DOMAIN: 'example.com'
      E_MAIL: 'foobar@example.com'
      LINK_NAME: 'webapp1'
  webapp:
    image: some_webapp
    ports:
      - '80:80'
```
