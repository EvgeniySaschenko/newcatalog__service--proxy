FROM nginx:1.23.3-alpine

ARG WORKDIR_BASE

WORKDIR ${WORKDIR_BASE}

# RUN apk add openssl

# RUN openssl req -x509 -days 3600 -out /etc/ssl/${SITE__DOMAIN}.crt -keyout /etc/ssl/${SITE__DOMAIN}.key \
#     -newkey rsa:2048 -nodes -sha256 \
#     -subj "/CN=${SITE__DOMAIN}" -extensions EXT -config <( \
#     printf "[dn]\nCN=${SITE__DOMAIN}\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:${SITE__DOMAIN}\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")


COPY . .