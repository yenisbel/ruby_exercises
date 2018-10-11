
def translate(sentence)
    words = sentence.split(" ")
    result = []

    vowels = ["a", "e", "i", "o", "u"]
    two_consonants = ["ch", "sh", "qu", "th", "br"]
    three_consonants = ["thr", "sch", "squ"]
     
    words.each do |word|
        # if words start with a vowels
        if vowels.include? word[0]
            result.push word << 'ay'      
        # if words start with at least one consonant
        else
            if three_consonants.include? word[0] + word[1] + word[2]
                first_three_letters = word.slice!(0,3)
                result.push word << first_three_letters << 'ay'
                
            elsif  two_consonants.include? word[0] + word[1]
                first_two_letters = word.slice!(0,2)
                result.push word << first_two_letters << 'ay'
                
            else
                first_letter = word.slice!(0)
                result.push word << first_letter << 'ay'
            end #consonant check  
        end #vowel check       
    end   
    return result.join(" ")

end

