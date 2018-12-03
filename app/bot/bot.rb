require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])


Bot.on :message do |message|
  message.mark_seen
  message.typing_on

  message.reply(text: 'hi! Please choose your credit card.')

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
                        title: "This is my card",
                        payload: "Mastercard",
                      }
                    ]
                  },{
                    title: "World Mastercard",
                    subtitle:"Give you the flexibility to explore all the places that matter to you",
                    image_url: 'https://www.mastercard.us/en-us/consumers/find-card-products/credit-cards/mastercard/_jcr_content/contentpar/herolight/image.adaptive.479.high.jpg/1487785073325.jpg',
                    buttons: [
                      {
                        type: "postback",
                        title: "This is my card",
                        payload: "World Mastercard",
                      }
                    ]
                  },{
                    title: "World Elite Mastercard",
                    subtitle:"Outstanding purchasing power and top-of-the-line features and benefits",
                    image_url: 'https://www.mastercard.us/en-us/consumers/find-card-products/credit-cards/mastercard/_jcr_content/contentpar/herolight_0/image.adaptive.479.high.jpg/1487784767161.jpg',
                    buttons: [
                      {
                        type: "postback",
                        title: "This is my card",
                        payload: "World Elite Mastercard",
                      }
                    ]
                  }
                ]
                }
              }
  )
end

Bot.on :postback do |postback|
  case postback.payload
  when 'Mastercard'
    text = '$'
  when 'World Mastercard'
    text = '$$'
  when 'World Elite Mastercard'
    text = '$$$'
  end
  postback.reply(
    text: text
  )

  postback.reply(
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


end



