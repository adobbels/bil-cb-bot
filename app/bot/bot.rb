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
    text = 'Nice choice 👍!'
  when 'World Mastercard'
    text = 'Very good choice 👌!'
  when 'World Elite Mastercard'
    text = 'You chose the best 👌!'
  end
  postback.reply(
    text: text
  )
  postback.reply(
    text: "What is your query about?"
  )

  postback.reply(
  attachment: {
                type: "template",
                payload: {
                  template_type: "generic",
                  elements: [{
                    title: "Traveling and FX ☀️",
                    subtitle:"Lucky you! Enjoy the sun and your holidays!",
                    image_url: 'https://cdn.dribbble.com/users/1303437/screenshots/3478867/holiday_800x600.gif',
                    buttons: [
                      {
                        type: "postback",
                        title: "Read more",
                        payload: "Traveling and FX ☀️",
                      }
                    ]
                  },{
                    title: "Payment issue",
                    subtitle:"No worries! Keep calm and read this section 🧘",
                    image_url: 'https://cdn.dribbble.com/users/1728608/screenshots/4632767/vault.gif',
                    buttons: [
                      {
                        type: "postback",
                        title: "Read more",
                        payload: "Keep calm and read this section 🧘",
                      }
                    ]
                  },{
                    title: "Limits Management",
                    subtitle:"Christmas is coming? Increase your Mastercard limits 📈",
                    image_url: 'https://cdn.dribbble.com/users/1303437/screenshots/4047776/diagram_800x600.png',
                    buttons: [
                      {
                        type: "postback",
                        title: "Read more",
                        payload: "Limits Management",
                      }
                    ]
                  },{
                    title: "Insurance",
                    subtitle:"Fully covered wherever you go 🌍",
                    image_url: 'https://cdn.dribbble.com/users/1303437/screenshots/3848038/devise-insurance.gif',
                    buttons: [
                      {
                        type: "postback",
                        title: "Read more",
                        payload: "Fully covered, wherever you go 🌍",
                      }
                    ]
                  }
                ]
                }
              }
  )

Bot.on :postback do |postback|
  case postback.payload
  when 'Traveling and FX ☀️'
    text = '1!'
  when 'Keep calm and read this section 🧘'
    text = '2'
  when 'Fully covered, wherever you go 🌍'
    text = '3'
  else
    text = '4'
  end
  postback.reply(
    text: text
  )
  postback.reply(
    text: "ok it works"
  )
end


end


