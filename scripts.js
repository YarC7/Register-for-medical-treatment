$(document).ready(function() {

    $("#chuyenkhoa").change(function() {
        var val = $(this).val();
        if (val == "1") {
            $("#bacsi").html("<option value='11'>TS.Bác sĩ Tăng Hà Nam Anh</option><option value='12'>TS.Bác sĩ Nguyễn Quang Huy2</option>");
            $("#price").html("<option value=''>100.000VND</option>");

        } else if (val == "2") {
            $("#bacsi").html("<option value='21'>BSCK1. Nguyễn Thị Kim Loan</option><option value='22'>Bác sĩ Lê Thị Lan</option>");
            $("#price").html("<option value=''>110.000VND</option>");

        } else if (val == "3") {
            $("#bacsi").html("<option value='31'>BSCK1. Lương Thị Giang Lam</option><option value='32'>TS.Bác sĩ Nguyễn Quang Thắng</option>");
            $("#price").html("<option value=''>120.000VND</option>");

        } else if (val == "4") {
            $("#bacsi").html("<option value='41'>TS.Bác sĩ Vũ Thị Thanh</option><option value='42'>TS.Bác sĩ Lê Thành Nam</option>");
            $("#price").html("<option value=''>130.000VND</option>");

        } else if (val == "5") {
            $("#bacsi").html("<option value='51'>GS.TS.Bác sĩ Trần Quán Anh</option><option value='52'>PGS.TS.Bác sĩ Trần Kim Anh</option>");
            $("#price").html("<option value=''>140.000VND</option>");

        } else if (val == "6") {
            $("#bacsi").html("<option value='61'>BSCKII. Trần Thị Kim Oanh</option><option value='62'>BSCKI. Nguyễn Ngọc Toàn</option>");
            $("#price").html("<option value=''>150.000VND</option>");

        } else if (val == "7") {
            $("#bacsi").html("<option value='71'>Bác sĩ Phạm Ngọc Tường Vy</option><option value='72'>Bác sĩ Vũ Văn Tiến </option>");
            $("#price").html("<option value=''>160.000VND</option>");

        } else if (val == "8") {
            $("#bacsi").html("<option value='81'>BSCKII. Nguyễn Đắc Hanh</option><option value='82'>BSCKI. Nguyễn Hồng Lâm</option>");
            $("#price").html("<option value=''>170.000VND</option>");

        } else if (val == "9") {
            $("#bacsi").html("<option value='91'>BSCKI. Nguyễn Văn Toán</option><option value='92'>BSCKI. Nguyễn Văn Trỗi </option>");
            $("#price").html("<option value=''>180.000VND</option>");

        } else if (val == "10") {
            $("#bacsi").html("<option value='101'>ThS.BS Chu Bắc Hà</option><option value='102'>ThS.BS Hà Anh Tuấn</option>");
            $("#price").html("<option value=''>190.000VND</option>");

        } else if (val == "11") {
            $("#bacsi").html("<option value='111'>BSCKI. Trần Phương Thanh</option><option value='112'>BSCKII. Trần Thanh Thảo</option>");
            $("#price").html("<option value=''>200.000VND</option>");

        } else if (val == "12") {
            $("#bacsi").html("<option value='121'>Bác sĩ Vũ Văn Nam</option><option value='122'>Bác sĩ Trần Thành Nam</option>");
            $("#price").html("<option value=''>210.000VND</option>");


        } else if (val == "13") {
            $("#bacsi").html("<option value='131'>BSCKII. Nguyễn Thu Trang</option><option value='132'>BSCKI. Nguyễn Thị Hiền</option>");
            $("#price").html("<option value=''>220.000VND</option>");


        } else if (val == "14") {
            $("#bacsi").html("<option value='141'>ThS.BSNT Bùi Quang Thạch</option><option value='142'>ThS.BS Bùi Tiến Dũng</option>");
            $("#price").html("<option value=''>230.000VND</option>");


        } else if (val == "15") {
            $("#bacsi").html("<option value='151'>BSCKII. Nguyễn Minh Tuấn</option><option value='152'>BSCKII. Nguyễn Tuấn Tài </option>");
            $("#price").html("<option value=''>240.000VND</option>");


        } else if (val == "16") {
            $("#bacsi").html("<option value='161'>Bác sĩ Trần Thị Thiên Hương</option><option value='162'>Bác sĩ Huỳnh Tài</option>");
            $("#price").html("<option value=''>250.000VND</option>");


        } else if (val == "17") {
            $("#bacsi").html("<option value='171'>PGS.TS.BS Chu Thị Hạnh</option><option value='172'>TS.BS Hoàng Văn Tài</option>");
            $("#price").html("<option value=''>260.000VND</option>");


        } else if (val == "18") {
            $("#bacsi").html("<option value='181'>Bác sĩ Lê Văn Nhâm</option><option value='182'>TS.BS Nguyễn Kim Hạnh</option>");
            $("#price").html("<option value=''>270.000VND</option>");


        } else if (val == "19") {
            $("#bacsi").html("<option value='191'>ThS.BS Nguyễn Hữu Phương </option><option value='192'>TS.BS Nguyễn Văn Tiến</option>");
            $("#price").html("<option value=''>280.000VND</option>");


        } else if (val == "20") {
            $("#bacsi").html("<option value='201'>Ths.BS Lê Văn Lượng</option><option value='202'>TS.BS Nguyễn Vân Thuỳ</option>");
            $("#price").html("<option value=''>290.000VND</option>");


        } else if (val == "21") {
            $("#bacsi").html("<option value='211'>BSCKI. Nguyễn Văn Chiến</option><option value='212'></option>");
            $("#price").html("<option value=''>300.000VND</option>");


        } else if (val == "22") {
            $("#bacsi").html("<option value='221'>BSCKII. Lê Văn Khánh</option><option value='222'>BS Trần Kim Hạnh</option>");
            $("#price").html("<option value=''>310.000VND</option>");

        } else if (val == "23") {
            $("#bacsi").html("<option value='231'>BSCKI. Cát Hồng Hà</option><option value='232'>Hồng Kim Nguyên</option>");
            $("#price").html("<option value=''>320.000VND</option>");
        } else if (val == "24") {
            $("#bacsi").html("<option value='241'>BSCKI. Cao Tuấn Anh</option><option value='242'>Bác sĩ Phạm Hồng Thái</option>");
            $("#price").html("<option value=''>330.000VND</option>");
        }

        
        
        
    });
    

    
})