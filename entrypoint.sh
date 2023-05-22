#!/bin/bash
set -e

rm -f /yama_rails/tmp/pids/server.pid

exec "$@"