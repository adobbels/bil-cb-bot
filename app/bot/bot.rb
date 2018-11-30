require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  message.typing_on


message.reply(
      attachment: {
        type: 'template',
        payload: {
          template_type: 'button',
          text: 'What is the purpose of your query?',
          buttons: [
            { type: 'postback', title: 'Withdraw', payload: 'WITHDRAW' },
            { type: 'postback', title: 'Payments', payload: 'PAYMENTS' },
            { type: 'postback', title: 'Insurance', payload: 'INSURANCE' },
          ]
        }
      }
    )

end
