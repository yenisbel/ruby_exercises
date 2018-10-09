
#Create class  Timer 
class Timer
  attr_accessor :seconds

  def initialize
    @timer = ' '
    @seconds = 0
  end


  def time_string
    seconds = @seconds
    hours = 0
    minu = 0
    sec = 0
    time = ' '
    while seconds >= 60
      minu = minu + 1
      if minu >= 60
        hours = hours + 1
        minu -= 60
      end 
      seconds -= 60 
    end 
    if seconds < 10
      sec = "0" + seconds.to_s
    else 
      sec = seconds  
    end

    if minu < 10
      minu = "0" + minu.to_s
    end  

    if hours < 10
      hours = "0" + hours.to_s
    end  

    time = hours.to_s + ':'+ minu.to_s + ':'+ sec.to_s
    return time
  end 

end


