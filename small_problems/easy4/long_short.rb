def short_long_short(one, two)
  if one.is_a?(String) && two.is_a?(String) == false
    return "one or both inputs are invalid"
  end
  one.length > two.length ? (two + one + two) : (one + two + one)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
