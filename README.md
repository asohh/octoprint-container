# Octoprint Container

## Build Containers
Config Loader:
`` buildah bud -f config-loader/Containerfile -t asohh/octoprint-config-loader:latest ``
Octoprint
`` buildah bud -f octoprint/Containerfile -t asohh/octoprint:latest ``

## Run Containers
podman run -v ./octoprint/:/home/octoprint:z  -d -e CONFIG_SERVER_HOST="http://192.168.31.14:39787" -e PRINTER_KEY=001 --name aso-octoprint-config asohh/octoprint-config-loader:latest

podman unshare chown 1000:1000 -R octoprint/

podman run -v ./octoprint/:/home/octoprint:Z  -d --name aso-octoprint --security-opt label=disable -p 5000:5000 asohh/octoprint:latest

## TODO
- improve config-loader (move to igition for full folder) 
