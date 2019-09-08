def hello_t(array)
  if !block_given?
    return puts "Hey! No block was given!"
  end
  i = 0

  while i < array.length
    yield array[i]
    i = i + 1
  end
  array
end

# call your method here!
hello_t ["Tim", "Tom", "Jim"] do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
