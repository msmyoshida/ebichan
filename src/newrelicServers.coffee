# Description:
#   Display current app performance stats from New Relic
#
# Dependencies:
#   "xml2js": "0.2.0"
#
# Configuration:
#   HUBOT_NEWRELIC_ACCOUNT_ID
#   HUBOT_NEWRELIC_APP_ID
#   HUBOT_NEWRELIC_API_KEY
#
# Commands:
#   hubot newrelic me - Returns summary application stats from New Relic
#
# Notes:
#   How to find these settings:
#   After signing into New Relic, select your application
#   Given: https://rpm.newrelic.com/accounts/xxx/applications/yyy
#     xxx is your Account ID and yyy is your App ID
#   Account Settings > API + Web Integrations > API Access > "API key"
#
# Author:
#   briandoll

# Parser = require("xml2js").Parser

module.exports = (robot) ->
  fetchData = (accountId, apiKey, msg) ->
    msg.http("https://api.newrelic.com/v2/servers.json")
      .header('X-Api-Key', apiKey)
      .get() (err, res, body) ->
        if err
          msg.send "New Relic says: #{err}"
          return

        #json = JSON.stringify(body, null, "     ")
        resolve JSON.parse(body)?.servers
        #str = JSON.stringify(body)
        #str2 = JSON.parse(str)
        #str = JSON.stringify(body, null, 10) 
        #str2 = str.replace(/^"(.*)"$/g, "$1")
        #str3 = str2.replace(/\\/g, "")
        #str4 = JSON.parse(str3)
        #replacedJson = replacedStr.replace(/^"(.*)"$/g, "$1")
        #replacedStr = replacedStr(/^"¥{/, "¥{")
        #str = toString(body)i
        #msg.send body[1]
        #msg.send body[25]
        #msg.send str2
        #msg.send str4.servers
        #msg.send str4.servers[0]

  #-----------
  robot.respond /newrelichogehoge (.+?)$/i, (msg) ->
    accountId = process.env.HUBOT_NEWRELIC_ACCOUNT_ID
    apiKey    = process.env.HUBOT_NEWRELIC_API_KEY
    fetchData(accountId, apiKey, msg)
