def hello_t(array)
  new_array = []
  i = 0
  while i < array.length
    ret = yield array[i]
    if ret != nil
      new_array.push ret
    end
    i = i + 1
  end
  new_array
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.upcase.start_with?("T")
        puts "Hi, #{name}"
        name
    end
end