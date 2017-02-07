def hello_t(array)
  yield
  puts "tricked"
end



# call your method here!

# hello_t(["Tim", "Tom", "Jim"]) { |elem| puts "Hi, #{elem}" if elem.start_with?("T") || elem.start_with("t") }
