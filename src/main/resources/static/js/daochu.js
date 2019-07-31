$("#dc_btn").click(function () {
    var bid = document.getElementById("bid").value;

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


$("#search_btn1").click(function () {
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


$("#shangchuan").click(function () {
    var k = $("#wenjian").textbox('getValue');
    if (k == '' || k == null) {
        alert("请选择");
    } else {
        var obj = document.getElementById('filebox_file_id_1');
        var wenjian = document.getElementById('filebox_file_id_1').files[0].name;//$("#wenjian").filebox('getValue');
        var str = wenjian.substr(wenjian.lastIndexOf("."));
        if (str == ".xls" || str == ".xlsx") {
            value = $('#p').progressbar('getValue');
            $('#p').show();
            ti = setInterval(a, 100);
            setTimeout(function () {
                clearInterval(ti);
                $('#p').progressbar('setValue', 0);
                $('#p').hide();
                $('#w').window('close');
                $("#f").submit();
                $("#f").form('clear')
                var t = setInterval(function() {
                    //获取iframe标签里body元素里的文字。即服务器响应过来的"上传成功"或"上传失败"
                    var word = $("iframe[name='frame1']").contents().find("body").text();
                    if (word != "") {
                        alert(word);        //弹窗提示是否上传成功
                        clearInterval(t);   //清除定时器
                    }
                }, 1000)
            }, 3500)
        } else {
            alert("请导入excel文件");
        }
    }
});
function a() {
    value += Math.floor(Math.random() * 10);
    $('#p').progressbar('setValue', value);
}
