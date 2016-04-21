#!/bin/bash

# REQUIREMENTS
#
# you need to set some environment values for this to work
#
# HUBOT_SLACK_TOKEN_NAMELESS -> your hubot token (https://nameless-org.slack.com/services/B125S4V7F)
# HUBOT_SLACK_WORKING_DIR -> where you have the slack bot installed
#
# You need to have "nohup" installed
#

CONFIG_DIR=/opt/config/functions.bash
if [ -e ${CONFIG_DIR} ]; then
  echo "Sourcing ${CONFIG_DIR}"
  source ${CONFIG_DIR}
fi

cd ${HUBOT_SLACK_WORKING_DIR}
HUBOT_SLACK_TOKEN=${HUBOT_SLACK_TOKEN_NAMELESS} nohup ./bin/hubot -a slack
