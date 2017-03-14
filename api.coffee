Twitter = require 'twitter'

api_key = 'E2c5LEOj5hkzpSacLSaMUFbGw'
api_secret = 'RBByVkB6ZCbfd8fgn45fSK8rWAw1Ak6LJsHfGcwGqIvKyu5wwB'
user_token = '279057181-noZ53SnbcKXZFbPSB7mKWJE0S1E2NWHhZUHnOlrC'
user_secret = '8T8gLqKeQyCepe0dAfTWblMAsmjfT6Kx6gMgiaBWzMjjB'
client = new Twitter consumer_key: api_key, consumer_secret: api_secret, access_token_key: user_token, access_token_secret: user_secret

client.get 'users/show', { screen_name: process.argv[2] }, (err, tweets, resp) ->
	console.log 'Done!'
	if err
		console.log err
		return
	console.log tweets
	for key of tweets
		console.log key
	console.log tweets['statuses_count']
