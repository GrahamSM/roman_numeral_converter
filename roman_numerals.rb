@roman_conv = {
	1000 => "M",
	900 => "CM",
	500 => "D",
	400 => "CD",
	100 => "C",
	90 => "XC",
	50 => "L",
	40 => "XL",
	10 => "X",
	9 => "IX",
	5 => "V",
	4 => "IV",
	1 => "I",
}

def to_roman(num)
	roman_str = ""
  @roman_conv.each do |val, let|
  	roman_str << let*(num/val)
  	num = num%val
  end
  return roman_str
end

def to_roman_two(num)
	roman_str = ""
	@roman_conv.each do |val, let|
  	roman_str = let*(num/val)
  	if let*(num/val) == ""
  	num = num%val
  end
end
  return roman_str
end
 
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(1453) == "MCDLIII"
 
# TODO: what other cases could you add to ensure your to_roman method is working?