def hello_t(array)
  if block_given?
    i = 0
    new_arr=[]
    while i < array.length
      if array[i].upcase.start_with?("T")
        yield(array[i])
        new_arr.push(array[i])
      end
      i = i + 1
    end
    new_arr
  else
    puts "Hey! No block was given!"
  end
end
