def hello_t(names)
  new_list =[]
  names.each do |name|
    if name.start_with?("T")
        puts "Hi, #{name}"
        new_list << name
    elsif name.start_with?("t")
        puts "Hi, #{name}"
    end
  end
  return new_list
end

# call your method here!
