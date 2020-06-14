def hello_t(array)
  if block_given?
    i = 0
    answer_array =[]
    while i < array.length
      if array[i].upcase.start_with?("T")
        yield(array[i])
        answer_array << array[i]
      end
      i = i + 1
    end
    answer_array
  else
    puts "Hey! No block was given!"
  end
end
