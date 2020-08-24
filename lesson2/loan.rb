require 'yaml'
require 'pry'
messages = YAML.safe_load(
  File.open('loan.yml').read
)
# definitions
def prompt(msg)
  puts "=> #{msg}"
end

def valid_num?(num)
  num.to_f > 0
end

prompt(messages["welcome"])
name = ''

loop do
  name = gets.chomp
  if name.empty?
    prompt(messages["name"])
  else
    break
  end
end
loop do
  prompt(messages["loan_amount"])
  loan_amount = ''
  monthly_loan_amount = 0
  loop do
    loan_amount = gets.chomp
    if valid_num?(loan_amount)
      monthly_loan_amount = loan_amount.to_i / 12
      break
    else
      prompt(messages["wrong_num"])
    end
  end

  prompt(messages["APR"])
  apr = ''
  monthly_interest_rate = 0
  loop do
    apr = gets.chomp
    if valid_num?(apr)
      monthly_interest_rate = apr.to_f / 100 / 12
      break
    else
      prompt(messages["wrong_num"])
    end
  end

  prompt(messages['duration'])
  duration = ''
  monthly_duration = 0
  loop do
    duration = gets.chomp
    if valid_num?(duration)
      monthly_duration = duration.to_f * 12
      break
    else
      prompt(messages["wrong_num"])
    end
  end

  monthly_payment = loan_amount.to_i * (monthly_interest_rate / (1 - ((1 + monthly_interest_rate)**(-monthly_duration))))

  prompt("#{messages['result']} #{monthly_payment.to_i}")

  prompt(messages["another"])
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt(messages["thank_you"])
