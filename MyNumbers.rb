def get_next_number(number)
  quantity = 1
  next_number = String.new
  number.each_char.with_index do |digit, index|
    if number[index.next] == digit
      quantity+= 1
    else
      next_number+= quantity.to_s
      next_number+= digit
      quantity = 1
    end
  end
  next_number
end

puts "Укажите требуемое количество чисел последовательности:"
quantity = gets.to_i
if quantity <= 0
  abort "Строка введена не верно"
end
puts "Последовательность:"
number = "1"
quantity.times do
  puts number
  number = get_next_number(number)
end