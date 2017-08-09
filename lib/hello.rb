                      # Yielding in Ruby #

# In Ruby, methods may receive a code block in order to perform arbitrary segments of code.
# When a method expects a block, it invokes it by calling the yield function.

# The yield keyword, when used inside the body of a method, will allow the program to call
# that method with a block of code and pass the torch, or yield, to that block.
# Eg. "Stop executing the code in this method, and instead execute the code in this block.
#      Then, return to the code in the method."

# Method works in a similar manner that #each or #collect does, taking blocks as arguments and
# yielding each element of the collection to the block, allowing the code in the block to be
# applied to each element of the collection.
def hello_t(array)
  # If/else loop to ensure that the program will yield each element of the array to the block
  # only if at least one block is present.
  if block_given?
    # To yield each element of the array successively to a block that the program will
    # call this method with.
    i = 0
    while i < array.length
      # Use of the bracket [] method to grab the value of each successive index element
      # as the program proceeds through the while loop, yielding each to a block.
      yield(array[i])
      i += 1
    end
    # Returns the original array by having that array be the last line of the method.
    # Whatever is evaluated last in a method will be the return value for the whole method.
    return array
  else
    # Method will break if they are called without an accompanying block.
    puts "Hey! No block was given!"
  end
end

# Method to call and test #hello_t by running through each name (item) in the array.
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  else
    puts "Your name does not start with the letter T, #{name}"
  end
end
