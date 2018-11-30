require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  if message.text.include? "Bonjour"
    message.reply(text: "Hello")
  elsif message.text.include? "Bonne nuit"
    message.reply(text: "A demain")
  else
    message.reply(text: 'Pas compris')
  end
end
