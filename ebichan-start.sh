#!/bin/bash

export HUBOT_SLACK_TOKEN=your-slack-api-token
export HUBOT_SLACK_TEAM=yourTeamName
export HUBOT_SLACK_BOTNAME=ebichan

export HUBOT_NEWRELIC_APP_ID=000000(your newrelic app id)
export HUBOT_NEWRELIC_ACCOUNT_ID=yourNewRelicAccountID
export HUBOT_NEWRELIC_API_KEY=yourNewRelicAPIKey

bin/hubot --adapter slack -r src
