
#Create class Dictionary
class Dictionary
  attr_accessor :entries, :keywords

  def initialize
  	@entries = {} 
  end

  def add(entry)
    if entry.is_a?(String)
      entry = { entry => nil }
    end
  	entry.each do |word, meaning|
  		@entries[word] = meaning
  	end	
  end

  def keywords
    input = []
    @entries.each do |key, value|
    input << key
    end
    input.sort  
  end

  def include?(key)
    self.keywords.include?(key) 
  end

  def find(key)
    result = {}

    entries.each do |entry_key, entry_value|
      if entry_key.match(/^#{key}/)
        result[entry_key] = entry_value
      end
    end

    result
  end

  def printable
    result = ""
    entries.each do |entry_key, entry_value|
      result = %Q{[#{entry_key}] "#{entry_value}"\n} + result
    end
    result[0..-2]
  end

	
end  