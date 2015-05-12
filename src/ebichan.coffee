# Description
#   main brain of ebichan
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   yoshida@ebisol.co.jp

module.exports = (robot) ->


  robot.hear /ebichan|えびちゃん|エビちゃん|海老ちゃん/, (msg) ->
    msg.reply "呼んだ？"


  robot.hear /orly/, ->
    res.send "yarly"
