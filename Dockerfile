FROM alpine

RUN apk add --no-cache curl

RUN curl -L https://api.nife.io/release/install.sh | sh

COPY entrypoint.sh entrypoint.sh/

RUN ["chmod", "+x", "entrypoint.sh"]
# RUN chmod +x /nifeaction/nife-actions/entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
