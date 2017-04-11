def hello_t(array)
  t_names = []

  i = 0
  while i < array.length
    if array[i].start_with?("T") || array[i].start_with?("t")
      t_names << array[i]
      yield array[i]
    end
    i = i + 1
  end
  t_names
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
    puts "Hi, #{name}"
end
