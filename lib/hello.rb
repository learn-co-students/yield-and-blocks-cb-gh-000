names = []

def hello_t(names)
  if block_given?
    name = 0

    while name < names.length
        yield names[name]
        name += 1
    end

    names
  else
    puts "Hey! No block was given!"
  end

end


hello_t(names)
