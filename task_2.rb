product_name = ""
result_hash = {}

puts "Введите название товара или 'стоп'"
product = gets.chomp
product_name = product

until product_name == "стоп" do

  puts "Введите цену за единицу товара"
  price = gets.to_f

  puts "Введите количество купленного товара"
  count = gets.to_i

  result_hash.merge!(product => { price: price, count: count })

  puts "Введите название товара или 'стоп'"
  product = gets.chomp
  product_name = product

end

puts "Итоговый хэш:" 
puts result_hash

result_price = 0

result_hash.each do |product, params|
  result_price += params[:price] * params[:count]
  puts "Общая сумма за #{product}: #{params[:price] * params[:count]}"
end

puts "Сумма всех покупок составила: #{result_price}"