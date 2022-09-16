puts "Nhập bao nhiêu số: "
n = gets.to_i
a = []
for i in (0..n-1) do 
    puts "Nhập số thứ #{i+1}"
    a[i] = gets.to_i
end

puts "Min: #{a.min}"
puts "Max: #{a.max}"
puts "Trung bình: #{a.sum/n}"