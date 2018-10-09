class Array
  	attr_accessor :array

  	def initialize
    	@array = []
  	end
	# Create instance methods
	def sum
		return 0 if empty?
		sum = 0
		self.each{|value| sum += value}
		sum
	end	
	
	def square
		self.map{|value| value * value}
	end	

	def square!
		self.map!{|value| value * value}
	end  
end




