def echo(word)
	"#{word}"
end	

def shout(sentence)
	words = sentence.split(' ')
	result = words.map {|word| word.upcase()}
	return result.join(' ')	
end

def repeat(word, times=2)
  word + (" #{word}" * (times-1))   
end

def start_of_word(string, num)
	"#{string[0,num]}"
end

def first_word(sentence)
	words = sentence.split(' ')
	return words[0]
end	


def titleize(sentence)
	words = sentence.split(' ')
	i = 0
	little_words = ["and", "over", "end", "the"]
	while i < words.length
		word = words[i] 
		if (little_words.include?(word)) && (word != words[0])
			word.downcase			
		else
			word[0] = word[0].upcase	
		end	

		i += 1
	end	
	
	return words.join(' ')	
end



