#!/bin/bash

# Please edit the service to your needs!
# It uses a hardcoded path to the start script!

sudo cp /opt/slack/nameless/tools/systemd/slack-bot-nameless.service /etc/systemd/system/
sudo systemctl daemon-reload
