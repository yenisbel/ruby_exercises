class Friend
  def greeting(who = nil)
    result = "Hello"
    if who
      result += ", #{who}"
    end
    result += '!'
  end
end
