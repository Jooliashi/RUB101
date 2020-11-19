=begin
input: an array and a hash
output: a string which is a greeting that uses the person's full name
and mention their title and occupation
=end

def greetings(name, details)
  "Hello, #{name.join(' ')}! Nice to have a #{details[:title]}"\
  " #{details[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
