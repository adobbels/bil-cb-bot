require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  message.mark_seen
  message.typing_on

message.reply(
  attachment: {
    type: 'image',
    payload: {
      url: 'https://www.visaeurope.com/media/images/visalogo73-189.png'
    }
  }
)


message.reply(
  attachment: {
    type: 'template',
    payload: {
      template_type: 'button',
      text: 'Human, do you like me?',
      buttons: [
        { type: 'postback', title: 'Yes', payload: 'HARMLESS' },
        { type: 'postback', title: 'No', payload: 'EXTERMINATE' }
      ]
    }
  }
)

message.reply(
  attachment: {
    type: 'template',
    payload: {
      template_type: 'generic',
      elements: [{
        title: 'Is this the right picture?',
        subtitle: 'Tap a button to answer.',
        image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
        buttons: [
          { type: 'postback', title: 'Yes!', payload: 'yes' },
          { type: 'postback',title: 'No!',payload: 'no' }
        ],
      }]
    }
  }
)

message.reply(
  attachment: {
    type: 'template',
    payload: {
      template_type: 'generic',
      elements: [
        {
        title: 'Is this the right picture?',
        subtitle: 'Tap a button to answer.',
        image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
        buttons: [
          { type: 'postback', title: 'Yes!', payload: 'yes' },
          { type: 'postback',title: 'No!',payload: 'no' }
        ],
      },
      {
        title: 'Is this the right picture?',
        subtitle: 'Tap a button to answer.',
        image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
        buttons: [
          { type: 'postback', title: 'Yes!', payload: 'yes' },
          { type: 'postback',title: 'No!',payload: 'no' }
        ],
      }
    ]
    }
  }
)

# message.reply(
#       attachment: {
#         type: 'template',
#         payload: {
#           template_type: 'button',
#           text: 'What is the purpose of your query?',
#           buttons: [
#             { type: 'postback', title: 'Withdraw', payload: 'WITHDRAW' },
#             { type: 'postback', title: 'Payments', payload: 'PAYMENTS' },
#             { type: 'postback', title: 'Insurance', payload: 'INSURANCE' },
#           ]
#         }
#       }
#     )


#       attachment: {
#         type: 'template',
#         payload: {
#           template_type: 'generic',
#           elements: [{
#             title: 'Is this the right picture?',
#             subtitle: 'Tap a button to answer.',
#             image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
#             buttons: [
#               { type: 'postback', title: 'Yes!', payload: 'yes' },
#               { type: 'postback',title: 'No!',payload: 'no' },
#             ],
#           }]
#         }
#       }



end



