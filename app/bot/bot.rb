require 'facebook/messenger'

include Facebook::Messenger

# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

#######################

Bot.on :message do |message|
  message.mark_seen
  message.typing_on

  puts message.reply(text: 'hi! Please choose your credit card.')

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
                        payload: "Traveling",
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
                        payload: "Calm",
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
                        payload: "Limits",
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
                        payload: "Covered",
                      }
                    ]
                  }
                ]
                }
              }
  )


# Double boucle
  Bot.on :postback do |postback|
    postback.reply(
      text: "ok, let's have a look at your query"
    )
    # postback.reply(
    #   text: text
    # )
    # postback.reply(
    #   text: postback.payload
    # )
    postback.reply(
      attachment: {
        type: 'template',
        payload: {
          template_type: 'button',
          text: 'What is the topic?',
          buttons: [
            { type: 'postback', title: 'Beneficiary', payload: 'Beneficiary' },
            { type: 'postback', title: 'Accident', payload: 'Accident' }
          ]
        }
      }
    )
  case postback.payload
  when 'Beneficiary'
    text = 'Here is a link for you : https://www.bil.com/en/individuals/products-and-services/managing-day-to-day-finances/Pages/credit-cards.aspx"'
  when 'Accident'
    text = 'Here is a link for you : https://www.bil.com/en/individuals/products-and-services/managing-day-to-day-finances/Pages/credit-cards.aspx"'
  end
    postback.reply(
    text: text
  )
  end
# Fin double boucle
end


###################

# Lors de la première arrivée sur le bot et menu persistent


# Bot.on :postback do |postback|
#   puts "-- postback"
#   p postback

#   case postback.payload

#   when 'comparer'
#     postback.typing_on
#     ask_for_location(postback)

#   when 'Démarrer'
#     postback.reply(text: 'Bon bah très bien et maintenant, que veux-tu faire?',
#       quick_replies: [
#         {
#           content_type: 'text',
#           title: "A propos",
#           payload: 'A propos'
#         },
#         {
#           content_type: 'text',
#           title: "Comparer",
#           payload: 'Comparer'
#         }
#       ]
#     )
#   end
# end


# def ask_for_location(postback)
#   puts postback
#   postback.reply(
#     text: 'Ok et tu veux faire quoi?',
#     quick_replies: [
#       {
#         content_type: 'location',
#         title: "Me géolocaliser",
#         payload: 'Me géolocaliser'
#       },
#       {
#         content_type: 'text',
#         title: "Mon emplacement",
#         payload: 'Mon emplacement'
#       }
#     ]
#   )
# end

# def wait_for_user_input
#   Bot.on :message do |message|
#     puts "-- message"
#     p message

#     case message.text
#     when "Démarrer"

#       message.typing_on
#       ask_for_doing(message)

#     when "Comparer"
#       message.reply(
#         text: 'Très bien, et maintenant?',
#         quick_replies: [
#           {
#             content_type: 'location',
#             title: "Me géolocaliser",
#             payload: 'Me géolocaliser'
#           },
#           {
#             content_type: 'text',
#             title: "Mon emplacement",
#             payload: 'Mon emplacement'
#           }
#         ]
#       )

#     when "A propos"
#       message.typing_on
#       message.reply(
#         text: 'Tonton taxi: 4 personnes qui souhaitaient...')
#       message.typing_on
#       ask_for_doing(message)
#     when "Mon emplacement"
#       message.reply(
#       text: 'Rentre maintenant ton adresse du coup')
#     end
#   end
# end


# def ask_for_doing(message)
#   message.reply(
#     text: 'Que veux-tu faire du coup?',
#     quick_replies: [
#       {
#         content_type: 'text',
#         title: "A propos",
#         payload: 'A propos'
#       },
#       {
#         content_type: 'text',
#         title: "Comparer",
#         payload: 'Comparer'
#       }
#     ]
#   )
# end
