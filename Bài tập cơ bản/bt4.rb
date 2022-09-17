def swap(a,b)
    tam = a
    a = b
    b = tam
    return  a, b
 end
 
 print "Nhập số 1: "
 number1 = gets.to_i
 print "Nhập số 2: "
 number2 = gets.to_i
 print "Nhập số 3"
 number3 = gets.to_i
 
 if number1 > number2
     number1, number2 = swap(number1, number2)
 end
 
 if number1 > number3
     number1, number3 = swap(number1, number3)
 end
 if number2 > number3
     number2, number3 = swap(number2, number3)
 end
 puts "Sắp xếp theo thứ tự tăng dần  #{number1} #{number2} #{number3}"
 
 puts "Sắp xếp theo thứ tự tăng giảm  #{number3} #{number2} #{number1}"
 
 