require "time"

def measure(run = 1)
	result = 0
	if block_given?
		run.times do 
			now = Time.now
			r = yield
			new_now = Time.now
			if r.is_a? Fixnum
			  result += r
			else
			  result += new_now - now
			end
		end 
	end
    result/run.to_f
end

