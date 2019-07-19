$("#dc_btn").click(function () {
    var bid=document.getElementById("job_num").value;

    var xiangmuname=document.getElementById("Ktext").value;
    var boolean=true;
    if(xiangmuname==''||xiangmuname==null){
        alert("项目名称不能为空");
        boolean=false;
    }
    var url="excel/export?bid="+bid+"&xiangmuname="+xiangmuname;
    if(boolean==true){
        document.location.href=url;
    }
});
$("#search_btn").click(function () {
    var name=document.getElementById("Ktext").value;
    var boolean=true;
    if(name==''||name==null){
        alert("项目名称不能为空")
        boolean=false;
    }
    if(boolean==true){
        $("#form").submit();
    }
});
$("#shangchuan").click(function () {
    var wenjian=document.getElementById('filebox_file_id_1').files[0].name;//$("#wenjian").filebox('getValue');
    var str=wenjian.substr(wenjian.lastIndexOf("."));
    if(str==".xls"||str==".xlsx"){
       /* $("#f").submit();*/
        $.get("excel/add?wenjian="+wenjian,function (data) {
           alert(data);
        });
        start();
    }else{
        alert("请导入excel文件");
    }
});
function start(){
    var value = $('#p').progressbar('getValue');
    $('#p').show();
    if (value < 100){
        value += Math.floor(Math.random() * 10);
        $('#p').progressbar('setValue', value);
        setTimeout(arguments.callee, 100);
    }
};