=begin

loop do (looping through names of the list)
  get the name of the key
  create an array containing first and last name
  loop do (looping through first and last name)
    capitalize the name
  end
  turn array of capitalized name into string
  replace old name with new capitalized string
end
purpose is to capitalize names
transformation

create empty array of usable leads
loop do
  get the last login and subscription status of the keys

  add to usable leads if last login is less than 2 months ago and
  subscription status is true
end
selection



=end
mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]
usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list
end
p usable_leads

