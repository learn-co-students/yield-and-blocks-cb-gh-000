def hello_t(names)
  if block_given?
    names.each { |x| yield(x) }
    names
  else
    puts "Hey! No block was given!"
  end
end
