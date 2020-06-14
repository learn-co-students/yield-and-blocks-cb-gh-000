def hello_t (array)
  if block_given?
  i = 0

  while i < array.length
    yield (array[i])
    i += 1
    #basically kar se izvede je, da pri yield podamo ne le argument funkciji ampak še celo del kode
  end
  array
else
  puts "Hey! No block was given!"
end
end

# call your method here!
