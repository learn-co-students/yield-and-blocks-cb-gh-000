def hello_t(names)
	t_names = []
	names.each do |name|
		if (name[0].upcase.eql?("T"))
			puts "Hi, #{name}"
			t_names.push(name)
		end
	end
	t_names
end

# call your method here!
