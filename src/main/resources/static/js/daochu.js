$("#dc_btn").click(function () {
    var bid = document.getElementById("job_num").value;

    var xiangmuname = document.getElementById("Ktext").value;
    var boolean = true;
    if (xiangmuname == '' || xiangmuname == null) {
        alert("项目名称不能为空");
        boolean = false;
    }
    var url = "excel/export?bid=" + bid + "&xiangmuname=" + xiangmuname;
    if (boolean == true) {
        document.location.href = url;
    }
});
$("#search_btn").click(function () {
    var name = document.getElementById("Ktext").value;
    var boolean = true;
    if (name == '' || name == null) {
        alert("项目名称不能为空")
        boolean = false;
    }
    if (boolean == true) {
        $("#form").submit();
    }
});
var ti;

function a() {
    var value = $('#p').progressbar('getValue');
    $('#p').show();
    //if (value <=100) {
    value += Math.floor(Math.random() * 10);
    $('#p').progressbar('setValue', value);
    //}

    // if (value >= 100) {
    //     var value1 = $('#p').progressbar('getValue');
    //     if (value1==100){
    //         setTimeout(alert("上传成功！"), 800);
    //     }
    //     $('#p').progressbar('setValue', 0);
    //     $("#p").hide();
    //     $('#w').window('close');
    // }
}


$("#shangchuan").click(function () {
    var k = $("#wenjian").textbox('getValue');
    //var k2 = $("#wenjian").filebox('getValue');
    alert(k)
    if (k == ''||k ==null) {
        alert("请选择");
    } else {

        var obj = document.getElementById('filebox_file_id_1');
        var wenjian = document.getElementById('filebox_file_id_1').files[0].name;//$("#wenjian").filebox('getValue');
        var str = wenjian.substr(wenjian.lastIndexOf("."));
            if (str == ".xls" || str == ".xlsx") {
                /* $("#f").submit();*/
                ti = setInterval(a, 100);
                $.get("excel/add?wenjian=" + wenjian, function (data) {
                    $('#p').progressbar('setValue', 100);
                    clearInterval(ti);
                    $("#wenjian").textbox('setValue', '');
                    $('#p').progressbar('setValue', 0);
                    $('#p').hide();
                    $('#w').window('close');
                });
            } else {
                alert("请导入excel文件");
            }
    }
});
