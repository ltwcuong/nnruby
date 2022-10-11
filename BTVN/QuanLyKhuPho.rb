class Nguoi
    @hoten_204
    @tuoi_204
    @nghenghiep_204
    @chungminh_204

    def NhapThongTin()
        print "Nhập họ tên: "
        @hoten_204 = gets.chomp
        print "Nhập tuổi: "
        @tuoi_204 = gets.to_i
        print "Nhập nghề nghiệp: "
        @nghenghiep_204 = gets.chomp
        print "Nhập chứng minh nhân dân: "
        @chungminh_204 = gets.chomp
        $HoGiaDinh << $nguoi
        $KhuPho << $HoGiaDinh
    end
    
    attr_accessor :hoten_204, :tuoi_204, :nghenghiep_204, :chungminh_204

    def HienThiThongTin()
        puts "Họ tên: #{@hoten_204} \nTuổi: #{@tuoi_204} \nNghề nghiệp: #{@nghenghiep_204} \nChứng minh nhân dân: #{@chungminh_204}"
    end
end

class HoGiaDinh < Nguoi
    @sothanhvien_204
    @sonha_204

    attr_accessor :sothanhvien_204, :sonha_204
    
    def NhapThongTinHoGD()
        $HoGiaDinh = []
        print "\nHộ gia đình có bao nhiêu người: "
        @sothanhvien_204 = gets.to_i
        for i in (0..@sothanhvien_204-1) do
            $nguoi = Nguoi.new
            puts "Nhập thông tin người thứ #{i+1}: "
            $nguoi.NhapThongTin
        end
        print "Nhập số nhà: "
        @sonha_204 = gets.to_i
        $HoGiaDinh << ({:@sothanhvien_204 => @sothanhvien_204})
        $HoGiaDinh << ({:@sonha_204 => @sonha_204})
    end
    
    $index_204 = 0
    def HienThiThongTinHoGD(kp)
        $index_204 += 1
        puts "Thông tin hộ gia đình thứ #{$index_204}: "
        puts "Số thành viên: #{kp[1][:@sothanhvien_204]}"
        kp.delete({:@sothanhvien_204 => kp[1][:@sothanhvien_204]})
        puts "Số nhà: #{kp[1][:@sonha_204]}"
        kp.delete({:@sonha_204 => kp[1][:@sonha_204]})
        kp.each do |hgd|
            puts hgd.HienThiThongTin
        end
    end
end

class QuanLyKhuPho < HoGiaDinh
    $KhuPho = []
    print "Nhập bao nhiêu hộ dân: "
    n = gets.to_i

    for i in (0..n-1) do
        $hd = HoGiaDinh.new
        print "Nhập thông tin hộ dân thứ #{i+1}: "
        $hd.NhapThongTinHoGD
    end

    puts "Thông tin các hộ gia đình trong khu phố: "

    $KhuPho.each do |kp|
        hgd = HoGiaDinh.new
        hgd.HienThiThongTinHoGD(kp)
    end
end