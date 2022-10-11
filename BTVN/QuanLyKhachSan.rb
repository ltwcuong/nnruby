class Nguoi
    @hoten_204
    @tuoi_204
    @cmnd_204
    @phong_204
    @songay_204

   

    def NhapThongTin()
        print "Nhập họ tên: "
        @hoten_204 = gets.chomp
        print "Nhập tuổi: "
        @tuoi_204 = gets.to_i
        print "Nhập chứng minh nhân dân: "
        @cmnd_204 = gets.to_i
        continue = true
        while continue
            print "Chọn loại phòng(A, B, C): "
            @phong_204 = gets.chomp
            case @phong_204
                when "A"
                    continue = false
                when "B"
                    continue = false
                when "C"
                    continue = false
            end
        end
        print "Nhập số ngày ở: "
        @songay_204 = gets.to_i
    end

    attr_accessor :hoten_204, :tuoi_204, :cmnd_204, :phong_204, :songay_204

    def HienThiThongTin()
        puts "Họ tên: #{@hoten_204} \nTuổi: #{@tuoi_204} \nChứng minh nhân dân: #{@cmnd_204} \nLoại phòng: #{@phong_204} \nSố ngày ở: #{@songay_204}"
    end
end

class KhachSan
    $list = []
    continue = true
    def ThemNguoi()
        nguoi = Nguoi.new
        nguoi.NhapThongTin()
        $list << nguoi
    end
    
    def XoaKhach
        puts "Danh sách khách hàng: "
        $list.each do |kh|
            puts kh.HienThiThongTin
        end
        print "Nhập số chứng minh khách cần xóa: "
        cmnd_204 = gets.to_i
        $list.select{|kh| kh.cmnd_204 == cmnd_204}.each do |khach|
            $list.delete(khach)
        end
        puts "Danh sách khách sau khi xóa: "
        $list.each do |kh|
            puts kh.HienThiThongTin
        end
        
    end
    
    def TinhTien        
        print "Nhập chứng minh nhân dân khách cần tính tiền: "
        cmnd_204 = gets.to_i
        $list.select{|kh| kh.cmnd_204 == cmnd_204}.each do |khach|
            loai = khach.phong_204
            if loai == "A"
                gia = 500
            elsif loai == "B"
                gia = 300
            elsif loai == "C"
                gia = 100
            end
            tongtien = khach.songay_204 * gia
            puts "Thông tin khách: "
            khach.HienThiThongTin
            puts "Tổng tiền: #{tongtien}"
        end
    end

    while continue
        puts "1. Thêm mới khách hàng."
        puts "2. Xóa khách theo số chứng minh nhân dân."
        puts "3. Tính tiền thuê phòng cho khách."
        puts "4. Thoát khỏi chương trình."

        print "Chọn chức năng: "
        chucnang = gets.to_i
        ks = KhachSan.new
        case chucnang
            when 1
                ks.ThemNguoi
            when 2
                ks.XoaKhach
            when 3
                ks.TinhTien
            else
                continue = false
        end
    end
end