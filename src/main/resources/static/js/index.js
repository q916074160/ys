function jieguo() {
    var name=document.getElementById("xiangmuname").value;
    var ren=document.getElementById("renshu").value;
    var gongshang=document.getElementById("gongshang").value;
    var yiliao=document.getElementById("yiliao").value;
    var yanglao=document.getElementById("yanglao").value;
    var shengyu=document.getElementById("shengyu").value;
    var shiye=document.getElementById("shiye").value;
    var shi=document.getElementById("shichang").value;
    var chepiao=document.getElementById("chepiao").value;
    var chuchai=document.getElementById("chuchaijiayou").value;
    var fangzu=document.getElementById("fangzu").value;
    var  tongxing=document.getElementById("gaosutongxing").value;
    var gongzi=document.getElementById("gongzi").value;
    var qita=document.getElementById("qita").value;
    var rengong=document.getElementById("rengong").value;
    var riyong=document.getElementById("riyongpin").value;
    var shebei=document.getElementById("shebeixiuli").value;
    var shuidian=document.getElementById("shuidian").value;
    var  shuifei=document.getElementById("shuifei").value;
    var tongxun=document.getElementById("tongxunfei").value;
    var waibao=document.getElementById("waibao").value;
    var  gongjiao=document.getElementById("shineigongjiao").value;
    var  zhaodai=document.getElementById("zhaodaifei").value;
    var  zuche=document.getElementById("zuchefei").value;
    var xiuche=document.getElementById("xiuchefei").value;
    var youji=document.getElementById("youjifei").value;

    var url="add?name="+name+"&ren="+ren+"&gongshang="+gongshang+"&yiliao="+yiliao+"&yanglao="+yanglao+"&shengyu="+shengyu+"&shiye="+shiye+"&shi="+shi+"&chepiao="+chepiao+"&chuchai="+chuchai+"&fangzu="+fangzu+
        "&tongxing="+tongxing+"&gongzi="+gongzi+"&qita="+qita+"&rengong="+rengong+"&riyong="+riyong+"&shebei="+shebei+"&shuidian="+shuidian+"&shuifei="+shuifei+"&tongxun="+tongxun+"&waibao="+waibao+
        "&gongjiao="+gongjiao+"&zhaodai="+zhaodai+"&zuche="+zuche+"&xiuche="+xiuche+"&youji="+youji;
    //alert(url);
    $.get(url,function (data) {
        $("#jg").text(data);
    });
}
function check(){
    var xiangmuname = document.getElementById("xiangmuname").value;
    var renshu = document.getElementById("renshu").value;
    var shichang = document.getElementById("shichang").value;
    var shuifei = document.getElementById("shuifei").value;
    var fangzu = document.getElementById("fangzu").value;
    var waibao = document.getElementById("waibao").value;
    var zhaodaifei = document.getElementById("zhaodaifei").value;
    var tongxunfei = document.getElementById("tongxunfei").value;
    var riyongpin = document.getElementById("riyongpin").value;
    var youjifei = document.getElementById("youjifei").value;
    var zuchefei = document.getElementById("zuchefei").value;
    var shebeixiuli = document.getElementById("shebeixiuli").value;
    var gaosutongxing = document.getElementById("gaosutongxing").value;
    var chuchaijiayou = document.getElementById("chuchaijiayou").value;
    var xiuchefei = document.getElementById("xiuchefei").value;
    var rengong = document.getElementById("rengong").value;
    var shuidian = document.getElementById("shuidian").value;
    var chepiao = document.getElementById("chepiao").value;
    var qita = document.getElementById("qita").value;
    var yanglao = document.getElementById("yanglao").value;
    var yiliao = document.getElementById("yiliao").value;
    var gongshang = document.getElementById("gongshang").value;
    var shiye = document.getElementById("shiye").value;
    var shengyu = document.getElementById("shengyu").value;






    if(xiangmuname ==  null || xiangmuname == ''){
        alert("合同名不能为空");
        return false;
    }
    if (renshu == "") {
        alert("人数不能为空,可以为0");
        return false;
    }
    if (gongzi == "") {
        alert("工资不能为空");
        return false;
    }

    if (shichang == "") {
        alert("时长不能为空");
        return false;
    }

    if (shuifei == "") {
        alert("税费不能为空");
        return false;
    }

    if (fangzu == "") {
        alert("房租不能为空");
        return false;
    }

    if (waibao == "") {
        alert("外包不能为空");
        return false;
    }

        if (zhaodaifei == "") {
            alert("招待费不能为空");
            return false;
        }
        if (tongxunfei == "") {
            alert("通讯费不能为空");
            return false;
        }

        if (riyongpin == "") {
            alert("日用品不能为空");
            return false;
        }
        if (youjifei == "") {
            alert("邮寄费不能为空");
            return false;
        }
        if (zuchefei == "") {
            alert("租车费不能为空");
            return false;
        }

        if (shebeixiuli == "") {
            alert("设备修理费不能为空");
            return false;
        }
        if (gaosutongxing == "") {
            alert("高速通行费不能为空");
            return false;
        }

        if (chuchaijiayou == "") {
            alert("出差加油费不能为空");
            return false;
        }
        if (shineigongjiao == "") {
            alert("市内公交出租费不能为空");
            return false;
        }
        if (xiuchefei == "") {
            alert("修车费不能为空");
            return false;
        }

        if (rengong == "") {
            alert("人工费不能为空");
            return false;
        }
        if (shuidian == "") {
            alert("水电费不能为空");
            return false;
        }
        if (chepiao == "") {
            alert("车票不能为空");
            return false;
        }
        if (qita == "") {
            alert("其他不能为空");
            return false;
        }
        if (yanglao == "") {
            alert("养老保险不能为空");
            return false;
        }
        if (yiliao == "") {
            alert("医疗保险不能为空");
            return false;
        }
            if (gongshang == "") {
                alert("工伤不能为空");
                return false;
            }
            if (shiye == "") {
                alert("失业保险不能为空");
                return false;
            }
            if (shengyu == "") {
                alert("生育保险不能为空");
                return false;
            }
        return true;
}


























