def hello_t(array)
  results = []
  i = 0
  while i < array.length
    if array[i].upcase.start_with?("T")
      results << array[i]
      yield array[i]
    end
    i = i + 1
  end
  results
end

# call your method here!
