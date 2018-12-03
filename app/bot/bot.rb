require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  message.mark_seen
  message.typing_on



# message.reply(
#   attachment: {
#     type: 'template',
#     payload: {
#       template_type: 'generic',
#       elements: [
#           {
#           title: 'Is this the right picture?',
#           subtitle: 'Tap a button to answer.',
#           image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
#           buttons: [
#             { type: 'postback', title: 'Yes!', payload: 'yes' },
#             { type: 'postback',title: 'No!',payload: 'no' }
#             ],
#           }
#         ],
#         [
#           {
#           title: 'Is this the right picture?',
#           subtitle: 'Tap a button to answer.',
#           image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
#           buttons: [
#             { type: 'postback', title: 'Yes!', payload: 'yes' },
#             { type: 'postback',title: 'No!',payload: 'no' }
#             ],
#           }
#         ]
#     }
#   }
# )

message.reply(
attachment: {
                type: "template",
                payload: {
                  template_type: "generic",
                  elements: [{
                    title: "Mastercard",
                    subtitle:"Use your Mastercard credit card for everyday purchases",
                    image_url: 'https://www.mastercard.us/en-us/consumers/find-card-products/credit-cards/mastercard/_jcr_content/contentpar/herolight_1/image.adaptive.479.high.jpg/1487872342914.jpg',
                    buttons: [
                      {
                        type: "postback",
                        title: "Choose this card",
                        payload: "Book Me a Venue",
                      }
                    ]
                  },{
                    title: "World Mastercard",
                    subtitle:"Giving you the flexibility to explore the places and pursuits that matter most to you",
                    image_url: 'https://www.mastercard.us/en-us/consumers/find-card-products/credit-cards/mastercard/_jcr_content/contentpar/herolight/image.adaptive.479.high.jpg/1487785073325.jpg',
                    buttons: [
                      {
                        type: "postback",
                        title: "Choose this card",
                        payload: "Book Me a Venue",
                      }
                    ]
                  },{
                    title: "World Elite Mastercard",
                    subtitle:"Outstanding purchasing power and top-of-the-line features and benefits",
                    image_url: 'https://www.mastercard.us/en-us/consumers/find-card-products/credit-cards/mastercard/_jcr_content/contentpar/herolight_0/image.adaptive.479.high.jpg/1487784767161.jpg',
                    buttons: [
                      {
                        type: "postback",
                        title: "Choose this card",
                        payload: "Book Me a Venue",
                      }
                    ]
                  }
                ]
                }
              }
)

# message.reply(
#   attachment: {
#     type: 'template',
#     payload: {
#       template_type: 'generic',
#       elements: [{
#         title: 'Is this the right picture?',
#         subtitle: 'Tap a button to answer.',
#         image_url: 'https://www.visaeurope.com/media/images/visalogo73-189.png',
#         buttons: [
#           { type: 'postback', title: 'Yes!', payload: 'yes' },
#           { type: 'postback',title: 'No!',payload: 'no' }
#         ],
#       }]
#     }
#   }
# )



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



