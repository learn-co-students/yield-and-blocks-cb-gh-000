def hello_t(arg)
  if block_given?
    arg.each do |a|
      yield(a)
    end
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!
