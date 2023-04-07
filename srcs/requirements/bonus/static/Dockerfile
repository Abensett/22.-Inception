FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache python3 py3-pip

RUN    pip3 install flask
# Set environment variables
ENV FLASK_APP=/myapp/app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000


RUN mkdir -p /var/www/static

COPY ./tools ./myapp
ADD ./tools /var/www/static/portfolio

EXPOSE 5000

CMD ["flask", "run"]
