class Nguoi
    @hoten_204
    @tuoi_204
    @quequan_204
    @masogv_204

    def initialize(hoten_204, tuoi_204, quequan_204, masogv_204)
        @hoten_204 = hoten_204
        @tuoi_204 = tuoi_204
        @quequan_204 = quequan_204
        @masogv_204 = masogv_204
    end

    attr_accessor :hoten_204, :tuoi_204, :quequan_204, :masogv_204

    def NhapThongTin
        print "Nhập họ tên: "
        @hoten_204 = gets.chomp
        print "Nhập tuổi: "
        @tuoi_204 = gets.to_i
        print "Nhập quê quán: "
        @quequan_204 = gets.chomp
        print "Nhập mã số giáo viên: "
        @masogv_204 = gets.chomp
    end

    def HienThiThongTin
        puts "Họ tên: #{@hoten_204}"
        puts "Tuổi: #{@tuoi_204}"
        puts "Quê quán: #{@quequan_204}"
        puts "Mã số giao viên: #{@masogv_204}"
    end
end

class CBGV < Nguoi
    @luongcung_204
    @luongthuong_204
    @tienphat_204
    @luongthuclinh_204

    def initialize

    end

    def NhapThongTin
        super
        print "Nhập lương cứng: "
        @luongcung_204 = gets.to_i
        print "Nhập lương thưởng: "
        @luongthuong_204 = gets.to_i
        print "Nhập tiền phạt: "
        @tienphat_204 = gets.to_i
        @luongthuclinh_204 = @luongcung_204 + @luongthuong_204 - @tienphat_204
    end

    attr_accessor :luongcung_204, :luongthuong_204, :tienphat_204, :luongthuclinh_204

    def HienThiThongTin
        super
        puts "Lương cứng: #{@luongcung_204}"
        puts "Lương thưởng: #{@luongthuong_204}"
        puts "Tiền phạt: #{@tienphat_204}"
        puts "Lương thực lĩnh: #{@luongthuclinh_204}"
    end
end

class QuanLyCanBo
    $list = []
    continue = true

    def NhapThongTin
        print "Thêm bao nhiêu cán bộ: "
        n = gets.to_i
        for i in 0..n-1 do
            cb = CBGV.new
            puts "Nhập thông tin cán bộ thứ #{i+1}: "
            cb.NhapThongTin
            $list << cb
        end
    end

    def XoaCanBo
        print "Nhập mã số cán bộ: "
        ms = gets.chomp
        $list.select{|cb| cb.masogv_204 == ms}.each do |gv|
            $list.delete(gv)
        end
        puts "Danh sách cán bộ sau khi xóa: "
        HienThiThongTin()
    end

    def HienThiThongTin
        puts "Danh sách cán bộ: "
        $list.each do |gv|
            # puts "Thông tin cán bộ thứ #{$index + 1}: "
            puts gv.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm cán bộ giáo viên."
        puts "2. Xóa cán bộ giáo viên theo mã số giáo viên."
        puts "3. Hiển thị danh sách giáo viên."
        puts "4. Thoát khỏi chương trình."
        print "Chọn chức năng: "
        chucnang = gets.to_i
        qlcb = QuanLyCanBo.new
        case chucnang
            when 1
                qlcb.NhapThongTin
            when 2
                qlcb.XoaCanBo
            when 3 
                qlcb.HienThiThongTin
            else continue = false
        end
    end
end