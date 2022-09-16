puts "Nhập giá trị cạnh 1: "
a = gets.to_i
puts "Nhập giá trị cạnh 2: "
b = gets.to_i
puts "Nhập giá trị cạnh 3: "
c = gets.to_i
if a + b > c and b + c > a and c + a > b
    p = (a + b + c)/2
    s = Math.sqrt(p*(p-a)*(p-b)*(p-c))
    puts "Chu vi tam giác: #{2*p}"
    puts "Diện tích tam giác : #{s}"
else 
    puts "không tạo thành tam giác"
end