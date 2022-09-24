require_relative 'student.rb'

arr = [Student.new(10,8,9,"Cường","Trắng",165,70,18,"214214214214","cuongthanh12@gmail.com","Kinh"),
  Student.new(8,8,8,"Su ki","Đen",170,70,21,"78921663494","suki3003@gmail.com","Kinh"),
  Student.new(10,8,7,"Phúc Bảo","Trắng",159,40,18,"87421964921321","baodtu@gmail.com","Kinh"),
  Student.new(10,9,8,"Xuân Nam","male",168,70,18,"796219643421","xuannam@gmail.com","Kinh"),
]

puts "Danh sách chưa sắp xếp : \n",arr,"\n"


arr_sorted = arr.sort_by { |item| -item.average_grade() }
puts "Danh sách đã sắp xếp : \n",arr_sorted