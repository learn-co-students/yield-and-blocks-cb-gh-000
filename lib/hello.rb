def hello_t(array)
 array.each do |name|
   if name.start_with?("T")
     puts "Hi, #{name}"
   end
   if name.start_with?("t")
     puts "Hi, #{name}"
   end
 end
end

# call your method here!

