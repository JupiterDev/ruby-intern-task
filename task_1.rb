puts "Введите значение a"
a = gets.to_i

puts "Введите значение b"
b = gets.to_i

puts "Введите значение c"
c = gets.to_i

d = b**2 - 4 * a * c

if d > 0
  puts "Дискриминант равен #{d}"
  x1 = -b + Math.sqrt(d) / (2 * a)
  puts "Первый корень равен #{x1}"
  x2 = -b - Math.sqrt(d) / (2 * a)
  puts "Первый корень равен #{x2}"
elsif d == 0 
  puts "Дискриминант равен #{d}"
  x1 = -b + Math.sqrt(d) / (2 * a)
  puts "Первый корень равен #{x1}"
else
  puts "Дискриминант равен #{d}"
  puts "Корней нет"
end

