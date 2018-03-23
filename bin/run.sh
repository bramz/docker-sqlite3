#!/bin/bash
sudo docker run -it --rm \
    -v $(pwd):/root/db \
    brockramz/sqlite3 "$@"
