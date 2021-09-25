#!/usr/bin/env bash
. .venv/bin/activate

gunicorn -w2 -b unix:app.sock wsgi:app
