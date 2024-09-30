server (
    listen ${LISTEN_PORT};

    location /static {
        alias /vol/static;
    }

    location / {
        uwsgi_pass           ${APP_HOST}:${APP_PROT};
        include              /etc/nginx/uwsgi_params;
        client_max_body_size 10M;
    }
)