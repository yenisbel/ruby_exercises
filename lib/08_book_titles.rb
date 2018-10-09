#Create class  Book 
class Book
  attr_accessor :title

  def initialize
  	@title = '' 
  end

  # Create instance method
  def title
	words = @title.split(' ')

	articles = ["the"]
    conjunctions = ["and"]
    prepositions = ["a","an","in","of"]

	i = 0
	while i < words.length
		word = words[i] 
		if (articles.include?(word)) && (word != words[0])
			word.downcase
		elsif (prepositions.include?(word)) || (conjunctions.include?(word))
			word.downcase
		else 
			word[0] = word[0].upcase
		end			

		i += 1
	end	
	return words.join(' ')
  end
end
