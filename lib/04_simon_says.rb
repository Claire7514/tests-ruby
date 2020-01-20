def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, num=2)
	return word + (" #{word}"*(num-1))
end

def start_of_word(word, num)
	if num ==1 
		return word[0]
	elsif num > 1
		return word[0..(num-1)]
	end
end

def first_word(str)
	return str.split.first
end

def titleize(str)
	string = str.split(" ")
    string[0].capitalize!
    string.map!{|x| x.size>3 ? x.capitalize : x}.join(" ")
end