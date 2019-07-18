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
    var wanjian=document.getElementById("wenjian").value;
    var str=wanjian.substr(wanjian.lastIndexOf("."));
    if(str==".xls"||str==".xlsx"){
        $("#f").submit();
    }else{
        alert("请导入excel文件");
    }
});