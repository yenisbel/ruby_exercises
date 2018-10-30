def sort(numbers)
    return numbers if numbers.size == 1

	i = 1

	element = 

	while i < numbers.size
       j = i
       while j >= 0
         if numbers[j] > numbers[j-1]
            break;
         end
         temp = numbers[j]
         numbers[j] = numbers[j-1]
         numbers[j-1] = temp

       	 j -= 1
       end  

       i += 1
	end

	numbers
end


def sort(numbers)
    return numbers if numbers.size == 1
	i = 1

	while i < numbers.size
	   element = numbers[i]
       j = i
       while j >= 0 && element < numbers[j-1]
         numbers[j] = numbers[j-1]
       	 j -= 1
       end

       numbers[j] = element
       i += 1
	end

	numbers
end


356748

element = 4

3456678
