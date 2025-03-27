def caesar_cipher(string, shift_num)
  num_array = string.bytes
  num_array_two = []
  return_array = []
  for num in num_array do
    num_array_two.push(num + shift_num)
  end
  for char in num_array_two do
    return_array.push(char.chr)
  end
  return_array.join("")
end

puts caesar_cipher("Hello", 5)