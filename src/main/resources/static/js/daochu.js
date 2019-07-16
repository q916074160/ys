$("#dc_btn").click(function () {
   var bid=document.getElementById("job_num").value;
   var xiangmuname=document.getElementById("Ktext").value;

   var url="excel/export?bid="+bid+"&xiangmuname="+xiangmuname;
    // alert(url);
    document.location.href=url;
});