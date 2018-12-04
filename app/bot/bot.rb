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

# Double boucle
Bot.on :postback do |postback|
  postback.reply(
    text: "ok, let's have a look at your query"
  )
  postback.reply(
    attachment: {
      type: 'template',
      payload: {
        template_type: 'button',
        text: 'What is your topic?',
        buttons: [
          { type: 'postback', title: 'Description of hazards', payload: 'risks' },
          { type: 'postback', title: 'Loss of life accident indemnity', payload: 'life' }
          { type: 'postback', title: 'Specific accident indemnity', payload: 'specific' }
          { type: 'postback', title: 'General exclusion', payload: 'exclusion' }
          { type: 'postback', title: 'Payment of benefits and beneficary', payload: 'beneficiary' }
        ]
      }
    }
  )
# Troisième boucle
Bot.on :postback do |postback|
  case postback.payload
  when 'risks'
    text = 'A. Transport
The benefits specified in this policy will be paid if while this policy is in force, an insured person suffers loss resulting, directly and independently of all other cause, from accidental bodily injury (such injury) received during a
one-way/return or round trip taken by the insured person between the point of
departure and the destination (both as designated in the insured person’s
ticket) on or after the date of ticket purchase ; provided, however, such injury
is sustained under the circumstances specified in 1 or 2 or 3 as follows:
1. Such injury received while travelling as a passenger, and not a pilot or crew member, in or boarding or alighting from or being struck by an air,
land or water public conveyance as defined in part 2 ; provided the fare for such travel has been paid as mentioned in Part 1 item 7.
2. Such injury received while travelling as a passenger or driver of a rental car as defined in part 2 ; provided the fare for such travel has been paid as mentioned in Part 1 item 7.
3. Such injury received while travelling as a passenger in a public
conveyance as defined in part 2 or in a taxi, or while travelling as a driver or passenger of a private car, but only
a) when going directly to an airport or place of embarkation for the
purpose of boarding an aircraft, vessel or train on which the insured
person is covered by the policy, even if the fare was not paid as mentioned in Part 1 item 7, or b) when returning directly from an airport or place of embarkation after alighting from such aircraft, vessel or train even if the fare was not charged as mentioned in Part 1 item 7.
B. Sojourn abroad
The insurance commences from the date on which departure for a journey abroad begins, for which the travel ticket or car rental contract is purchased
and charged as mentioned in Part 1 item 9 and runs until the insured person
returns to his country of residence for a period of 60 days abroad.During an
insured sojourn abroad, accident insurance cover is guaranteed 24 hrs a
day.'
  when 'life'
    text = 'When injury results in loss of life of the insured person within one year after
the date of the accident, the insurer will pay the loss of life accident indemnity
stated in item 4 "schedule of benefits" in part 1.'
  when 'specific'
    text = 'When injury does not result in loss of life of the insured person but does
result in any one of the following losses within one year after the date of the
accident, the insurer will pay the amount set opposite said loss, but not to
exceed the specific loss accident indemnity stated in item 4 schedule of
benefits - in part 1.
If more than one loss results from one accident, only the amount set opposite
one loss (the greater) will be paid.'
  when 'exclusion'
    text = 'This policy does not cover any loss, fatal or non-fatal, caused by or resulting
from:
1. suicide or any attempt thereat while sane or self-destruction or any attempt thereat while insane;
2. a) war invasion act of foreign enemy hostilities (whether war be declared
or not), civil war, rebellion, revolution, insurrection, or military or usurped
power;
b) any foreseeable act of any person acting on behalf of or in connection with any organisation with activities directed towards the overthrow by
force of any government (whether with legal authority or not) ;
3. illegal acts of an insured person or an insured person’s designated
beneficiary, executor(s) or administrator(s) or legal heirs or personal legal
representative(s);
4. the inebriety of an insured person whilst driving a vehicle unless it can be
proved by him or his beneficiaries that there is no causal link. (The state of
intoxication will be determined according to the regulations in force in the
country where the accident occurred);
5. bets, challenges, well-known perilous acts;
6. the piloting of aircraft except for persons holding a professional licence to
fly;
7. motorised speed or reliability trials and races;
8. the insured person engaging during the period of sojourn in manual work,
in connection with a profession, business or trade, or in the supervision of such manual work unless this supervision be purely administrative as opposed to physical.'
  when 'beneficiary'
    text = 'The payment of indemnities will be made directly to the beneficiary.
Loss of life accident indemnity and any other accrued indemnities unpaid at
the insured person’s death shall be payable in accordance with the
designation of beneficiary made by the insured person.
If no beneficiary has been designated or if the designated beneficiary has predeceased the insured person, such indemnities shall, at the insured’s option and in accordance with the laws of the country of payment, be paid to
the insured person’s executor(s) or administrator(s), legal heir(s) or personal
legal representative(s) with exception of the state.
If, after inquiry no heir is found, benefit will be paid to the policyholder provided such a procedure is not unlawful according to laws and regulations
in force.
All other indemnities will be payable to the insured person'
  end
  postback.reply(
    text: text
  )
end

# Fin troisième boucle
end
# Fin double boucle

end


