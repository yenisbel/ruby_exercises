

# Converting from the temperature in degrees Fahrenheit (°F) to degrees Celsius (°C)  

def ftoc(temperature)
  temp_celsius = 0
  conver_to_celsius = 5/9.to_f

  if temperature == 32
    temp_celsius = 0
  else
    temp_celsius = (temperature - 32) * conver_to_celsius
  end

  return temp_celsius.to_i
end

# Converting from the temperature in degrees Celsius (°C) to degrees Fahrenheit (°F) 

def ctof (temperature)
  temp_fahren = 0
  conver_to_fahren = 9/5.to_f

  if temperature == 0
    temp_fahren = 32  
  else
    temp_fahren = (temperature * conver_to_fahren) + 32
  end

  return temp_fahren.round(1)
end

