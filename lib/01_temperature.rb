

# Converting from the temperature in degrees Fahrenheit (°F) to degrees Celsius (°C)  



def ftoc(temperature)
  if temperature == 32
    celsius_temp = 0
  else temperature > 32
    celsius_temp = (temperature - 32) * 5.0/9.0
  end 
        
end

# Converting from the temperature in degrees Celsius (°C) to degrees Fahrenheit (°F) 

def ctof(temperature)
  if temperature == 0
    fareheint_temp = 32
  else 
    fareheint_temp = (temperature * 9.0/5.0) + 32  
  end 
end 

