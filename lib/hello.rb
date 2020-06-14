

def hello_t(array)
  if block_given?
    i = 0

    while i < array.length
      yield array[i]
      i += 1
    end
    return array
  else
    puts "Hey! No block was given!"
  end
end


arr = ["Tim", "Tom", "Jim"]

hello_t(arr) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
