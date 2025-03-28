def caesar_cipher(string, shift_num)
  num_array = string.bytes
  num_array_two = []
  return_array = []
  
  for num in num_array do
  num_size = num + shift_num
    if num == 32
      num_array_two.push(" ")
    elsif num.between?(33, 64)
      num_array_two.push(num)
    elsif num_size > 122
      num_array_two.push(num - 26 + shift_num)
    elsif num_size.between?(91, 96)
      num_array_two.push(num - 26 + shift_num)
    else
      num_array_two.push(num_size)
    end
  end

  for char in num_array_two do
    return_array.push(char.chr)
  end

  return_array.join("")

end

puts "Please provide a secret message."
secret_message = gets.chomp.to_s

puts "Please provide a shift number to encode your message with."
encoder_num = gets.chomp.to_i

puts "Here's your encrypted message!"
puts caesar_cipher(secret_message, encoder_num)
