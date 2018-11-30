require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  message.typing_on
  if message.text.include? "Bonjour"
    message.reply(text: "Hello")
  elsif message.text.include? "Bonne nuit"
    message.reply(text: "A demain")
  else

    message.reply(
    attachment: {
    type: 'image',
    payload: {
      url: 'https://www.bil.com/PublishingImages/site-particuliers/MasterCard-Gold.jpg'
    }
  }
)
  end
end
