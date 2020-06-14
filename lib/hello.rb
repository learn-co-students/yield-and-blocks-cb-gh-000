def yielding_with_arguments(num)
  puts "the program is executing the code inside the method"
  yield(num)
  puts "now we are back in the method"
end

yielding_with_arguments(2) {|i| puts i * 2}


############## FOLLOWING METHOD WILL BREAK IF NOT CALLED WITH A BLOCK

def hello_t(array)
  i = 0
  while i < array.length
    yield array[i]
    i = i + 1
  end
  array
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.start_with?("T")
        puts "Hi, #{name}"
    end
end

################# FOLLOWING METHOD ALLOWS FOR CALLING WITH OR WITHOUT BLOCK

def hello_t(array)
  if block_given?
    i = 0
    while i < array.length
      yield(array[i])
      i = i + 1
    end
    array
  else
    puts "Hey! No block was given!"
  end
end
##The block_given? method returns true if the method that contains block_given? is called with a block and false if it is not.
