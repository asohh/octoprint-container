mkdir /home/octoprint/.octoprint/
curl ${CONFIG_SERVER_HOST}/octoprint/config/${PRINTER_KEY} > /home/octoprint/.octoprint/config.yaml
curl ${CONFIG_SERVER_HOST}/octoprint/users/${PRINTER_KEY} > /home/octoprint/.octoprint/users.yaml
