def likes(names)
  case names.size
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this "
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]}, and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} like this"
  end
end

def like2(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "%s likes this" % names
  when 2
    "%s and %s like this" % names
  when 3
    "%s, %s and %s like this" % names
  else
    "%s, %s and %d others like this" %
      [names[0], names[1], names.length - 2]
  end
end
