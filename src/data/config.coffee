#States for an alert
exports.OPEN = 0
exports.ACK  = 1

#Alerts are assigned a random id betwen [0, max - 1]
exports.RANDOM_ID_MAX = 1001

#Timing
exports.ONE_HOUR_MS = 1000*60*60

exports.HOURS_BEFORE_REPOST = 3
exports.HOURS_BEFORE_ACK_REPOST = 12
exports.ALERT_CHECK_INTERVAL = 1000*60

#Help Text
exports.commands = [
   "influx alerts {off|ok} - toggled automatic alert checking off or on"
   "influx show - list available query aliases"
   "influx run QUERY_NAME - run a query alias"
   "influx query \"QUERY\" [DATABASE] - run a custom query"
   "influx alerts check- force hubot to run the alert queries. Useful for debugging"
   "influx claim ID - claim an alert and stop it from posting the same alert for #{exports.HOURS_BEFORE_ACK_REPOST} hour(s) "
]

#These config options will look for an environment variable first, config file second
exports.config_options = require("../../config/hubot-influx-config.json")

#TODO set these from env variables
