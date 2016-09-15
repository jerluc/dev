#!/bin/bash
docker start dev >/dev/null
docker exec -it dev /bin/login
