def hello_t(array)
  unless block_given?
    return puts "Hey! No block was given!"
  end
  i = 0
  until i == array.length
    yield array[i]
    i+=1
  end
  array
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
