#!/usr/bin/env bash
. .venv/bin/activate

gunicorn --error-logfile errors.txt -w2 -b unix:app.sock wsgi:app
