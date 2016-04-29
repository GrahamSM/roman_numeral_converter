def calc_roman(roman_hash)
	puts "Please enter a valid roman numeral"
	roman_string = gets.chomp
	roman_string = roman_string.downcase
	sum = 0
	prev = 0
	count = 0
	length = roman_string.length #Length of our roman numeral
	roman_string.split("").each do |i| 
		i = i.to_sym #Convert to symbol
		if count == 0 #Add/subtract choice is based on the previous value. Don't add anything for the first value
			add_value = 0
		else
			add_value = roman_hash[i] ## Corresponding value in roman_hash
		end
		(prev < add_value) ? (sum = sum - prev) : (sum = sum + prev)
		prev = roman_hash[i] ## Corresponding value in roman_hash
		count += 1
		if count == length
			sum += roman_hash[i]	
			return sum
		end
	end
end

roman_hash = { #Hash table to store correspnding roman values
	:i => 1,
	:v => 5,
	:x => 10,
	:l => 50,
	:c => 100,
	:d => 500,
	:m => 1000,
}

sum = calc_roman(roman_hash)
puts sum