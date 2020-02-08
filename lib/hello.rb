def hello_t(array)
  i=0
  if !block_given?
    puts "Hey! No block was given!"
    array
  else
  while i<array.size
    yield(array[i]) if block_given?
    i+=1
  end
  array
end
end


# hello_t(["Tom"]) do |name|
#   if name.start_with?("T")
#     puts "Hi, #{name}"
# end
# call your method here!
