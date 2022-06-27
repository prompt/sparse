cd /srv

if [[ ! -f index.html ]]; then
    echo "Sparse cannot start: an index.html file is required at /srv/index.html"
    exit 1
fi

envsubst < index.html > entrypoint.html
