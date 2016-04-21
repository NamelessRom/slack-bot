# Description:
#   Hey Taco! integration
#

module.exports = (robot) ->

  robot.respond /:taco:/i, (res) ->
    res.reply ":taco: up your a**"

  robot.respond /get @(.*) a taco/i, (res) ->
    person = res.match[1]
    res.send "@#{person}: here is your :taco:"

  angry = [ 'Really? Here it is ":taco: in your face" time!', 'Shut the _f_ up already!', 'I can\'t do this anymore... :(' ]
  robot.hear /It's taco time!/i, (res) ->
    res.send res.random angry

  robot.hear /Give someone a taco by adding it after their username, like this/i, (res) ->
    res.send "Hell no!"

  robot.hear /nooooo/i, (res) ->
    res.send "https://cdn.meme.am/instances/500x/58572166.jpg"
