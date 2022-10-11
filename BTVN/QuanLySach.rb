class TaiLieu
    @matailieu_204
    @tennhaxuatban_204
    @sobanphathanh_204
    @loai_204

    def initialize(matailieu_204, tennhaxuatban_204, sobanphathanh_204)
        @matailieu_204 = matailieu204
        @tennhaxuatban_204 = tennhaxuatban204
        @sobanphathanh_204 = sobanphathanh204
    end

    def NhapThongTin(loai_204)
        print "Nhập mã tài liệu: "
        @matailieu_204 = gets.chomp
        print "Nhập tên nhà xuất bản: "
        @tennhaxuatban_204 = gets.chomp
        print "Nhập số bản phát hành: "
        @sobanphathanh_204 = gets.to_i
        @loai_204 = loai204
    end
    
    attr_accessor :matailieu204, :tennhaxuatban204, :sobanphathanh204, :loai204

    def HienThiThongTin
        puts "Mã tài liệu: #{@matailieu_204}\nLoại tài liệu: #{@loai_204} \nTên nhà xuất bản: #{@tennhaxuatban_204} \nSố bản phát hành: #{@sobanphathanh_204}"
    end
end

class Sach < TaiLieu
    @tacgia_204
    @sotrang_204

    def initialize
    end

    # def initialize(tacgia, sotrang)
    #     super
    #     @tacgia = tacgia
    #     @sotrang = sotrang
    # end

    attr_accessor :tacgia, :sotrang
    
    def NhapThongTin(loai204)
        super
        print "Nhập tên tác giả: "
        @tacgia_204= gets.chomp
        print "Nhập số trang: "
        @sotrang_204 = gets.to_i
    end
    
    def HienThiThongTin
        super
        puts "Tác giả: #{@tacgia_204} \nSố trang: #{@sotrang_204}"
    end
end

class Tapchi < TaiLieu
    @sophathanh_204
    @thangphathanh_204

    def initialize
    end
    
    # def initialize(sophathanh, thangphathanh)
    #     super
    #     @sophathanh = sophathanh
    #     @thangphathanh = thangphathanh
    # end

    def NhapThongTin(loai204)
        super
        print "Nhập số phát hành: "
        @sophathanh_204 = gets.to_i
        print "Nhập tháng phát hành: "
        @thangphathanh_204 = gets.chomp
    end
    attr_accessor :sophathanh204, :thangphathanh204
    
    def HienThiThongTin
        super
        puts "Số phát hành: #{@sophathanh_204} \nTháng phát hành: #{@thangphathanh_204}"
    end
end

class Bao < TaiLieu
    @ngayphathanh_204

    def initialize
    end

    # def initialize(ngayphathanh)
    #     super
    #     @ngayphathanh = ngayphathanh
    # end
    
    def NhapThongTin(loai204)
        super
        print "Nhập ngày phát hành: "
        @ngayphathanh_204204 = gets.chomp
    end
    
    attr_accessor :ngayphathanh204

    def HienThiThongTin
        super
        puts "Ngày phát hành: #{@ngayphathanh_204}"
    end
end

class QuanLySach
    $TaiLieu = []
    continue = true
    def ThemTaiLieu
        puts "1. Thêm sách."        
        puts "2. Thêm tạp chí."        
        puts "3. Thêm báo."        
        print "Chọn loại tài liệu cần thêm: "
        loai204 = gets.to_i
        case loai204
            when 1
                ten = "sách"
            when 2
                ten = "tạp chí"
            when 3
                ten = "báo"
            else
                puts "Chọn sai loại rồi"
        end
        print "Thêm bao nhiêu #{ten}: "
        n = gets.to_i

        for i in (0..n-1) do
            case loai204
                when 1
                    $tl = Sach.new
                when 2
                    $tl = Tapchi.new
                when 3
                    $tl = Bao.new
                else
                    puts "Chọn sai loại rồi"
            end
            puts "Nhập thông tin #{ten} thứ #{i+1}: "
            $tl.NhapThongTin(ten)
            $TaiLieu << $tl
        end
    end

    def XoaTaiLieu
        print "Nhập mã tài liệu cần xóa: "
        matl = gets.chomp
        tk = $TaiLieu.select{ |tl| tl.matailieu == matl}
        puts "Danh sách tài liệu sau khi xóa: "
        tk.each do |tl|
            $TaiLieu.delete(tl)
        end
        HienThiThongTin()
    end

    def HienThiThongTin
        $TaiLieu.each do |tl|
            puts tl.HienThiThongTin
        end
    end

    def TimKiem
        print "Nhập loại tài liệu cần tìm: "
        loai204 = gets.chomp
        tk = $TaiLieu.select{ |tl| tl.loai == loai204}
        puts "Danh sách tài liệu tìm theo loại:"
        tk.each do |loai204|
            puts loai204.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm mới tài liệu."
        puts "2. Xóa tài liệu theo mã tài liệu."
        puts "3. Hiện thị thông tin về tài liệu"
        puts "4. Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo"
        puts "5. Thoát khỏi chương trình"

        qls = QuanLySach.new
        print "Chọn chức năng: "
        chucnang = gets.to_i

        case chucnang
            when 1 
                qls.ThemTaiLieu
            when 2
                qls.XoaTaiLieu
            when 3
                puts "Danh sách tài liệu: "
                qls.HienThiThongTin
            when 4
                qls.TimKiem
            else
                continue = false
        end
    end
end