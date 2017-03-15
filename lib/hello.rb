def hello_t(array)
  new_array = []
    array.each do |name|


  if
     name.start_with?("T")

       puts "Hi, #{name}"
       new_array << name

     elsif 
        name.start_with?("t")

       puts "Hi, #{name}"


     end

   end
   new_array
end

# call your method here!
