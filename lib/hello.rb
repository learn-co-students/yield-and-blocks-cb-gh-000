def hello_t(array)
  new_array = Array.new
  i = 0
  while i < array.length
    if array[i].downcase.start_with?("t")
      yield(array[i])
      new_array << array[i]
    end
    i = i + 1
  end
  new_array
end

# call your method here!
