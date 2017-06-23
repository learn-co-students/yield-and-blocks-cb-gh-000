def hello_t names
  names.each do |name|
    yield name
  end
rescue LocalJumpError
  puts "Hey! No block was given!"
end

# call your method here!
