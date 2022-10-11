class SinhVien
    @hoten_204
    @tuoi_204
    @lop_204

    def initialize(hoten_204, tuoi_204, lop_204)
        @hoten_204 = hoten_204
        @tuoi_204 = tuoi_204
        @lop_204 = lop_204
    end

    attr_accessor :hoten_204, :tuoi_204, :lop_204

    def NhapThongTin
        print "Nhập họ tên: "
        @hoten_204 = gets.chomp
        print "Nhập tuổi: "
        @tuoi_204 = gets.to_i
        print "Nhập lớp: "
        @lop_204 = gets.chomp
    end

    def HienThiThongTin
        puts "Họ tên: #{@hoten_204}"
        puts "Tuổi: #{@tuoi_204}"
        puts "Lớp: #{@lop_204}"
    end
end

class TheMuon < SinhVien
    @maphieumuon_204
    @ngaymuon_204
    @ngaytra_204
    @sohieusach_204
    def initialize

    end

    attr_accessor :maphieumuon_204, :ngaymuon_204, :ngaytra_204, :sohieusach_204

    def NhapThongTin
        super
        print "Nhập mã phiếu mượn: "
        @maphieumuon_204 = gets.chomp
        print "Nhập ngày mượn: "
        @ngaymuon_204 = gets.to_i
        print "Nhập ngày trả: "
        @ngaytra_204 = gets.to_i
        print "Nhập số hiệu sách: "
        @sohieusach_204 = gets.to_i
    end

    def HienThiThongTin
        super
        puts "Mã phiếu mượn: #{@maphieumuon_204}"
        puts "Ngày mượn: #{@ngaymuon_204}"
        puts "Hạn trả: #{@ngaytra_204-@ngaymuon_204} ngày"
        puts "Số hiệu sách: #{@sohieusach_204}"
    end
end

class QuanLyMuonSach
    $list = []
    continue = true

    def ThemMoi
        print "Thêm mới bao nhiêu thẻ mượn: "
        n = gets.to_i
        for i in 0..n-1 do
            tm = TheMuon.new
            puts "Nhập thông tin thẻ mượn thứ #{i+1}: "
            tm.NhapThongTin
            $list << tm
        end
    end
    
    def XoaThe
        print "Nhập mã phiếu mượn cần xóa: "
        mpm = gets.chomp
        $list.select{|pm| pm.maphieumuon_204 == mpm}.each do |pm|
            $list.delete(pm)
        end
        puts "Danh sách phiếu mượn sau khi xóa: "
        HienThi()
    end

    def HienThi
        $list.each do |pm|
            pm.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm phiếu mượn sách."
        puts "2. Xóa theo mã phiếu mượn."
        puts "3. Hiển thị thông tin các thẻ mượn."
        puts "4. Thoát khỏi chương trình."
        print "Chọn chức năng: "
        chucnang = gets.to_i
        qlms = QuanLyMuonSach.new
        case chucnang
            when 1
                qlms.ThemMoi
            when 2
                qlms.XoaThe
            when 3
                puts "Danh sách phiếu mượn: "
                qlms.HienThi
            else continue = false
        end
    end
end