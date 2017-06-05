def hello_t(names)
  array = []
  names.each do |name|
    if name.start_with?("T") || name.start_with?("t")
      array << name
      yield(name)
    end
  end

  return array
end

# call your method here!
