def hello_t(array)
  i = 0
  array_returned = []
  while i < array.length
    if array[i].upcase.start_with?('T')
      yield array[i]
      array_returned << array[i]
    end
    i += 1
  end
  array_returned
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.start_with?("T")
        puts "Hi, #{name}"
    end
end
