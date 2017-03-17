def hello_t(array)
  if block_given?
    res = []
    i = 0
    while i < array.length
      if array[i].upcase.start_with?("T")
        yield(array[i])
        res.push(array[i])
      end
      i = i + 1
    end
    res
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
	puts "Hi, #{name}"
end
