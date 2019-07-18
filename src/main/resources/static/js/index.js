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
    var gongzi=document.getElementById("gongzi").value;
    var  shineigongjiao=document.getElementById("shineigongjiao").value;
    var zhongdui=document.getElementById("zhongdui").value;
    var boolean=true;
    if(xiangmuname ==  null || xiangmuname == ''){
        alert("合同名不能为空");
        boolean= false;
        return false;
    }
    if (renshu == "") {
        alert("人数不能为空,可以为0");
        boolean= false;
        return false;
    }
    if (gongzi == "") {
        alert("工资不能为空");
        boolean= false;
        return false;
    }

    if (shichang == "") {
        alert("时长不能为空");
        boolean= false;
        return false;
    }

    if (shuifei == "") {
        alert("税费不能为空");
        boolean= false;
        return false;
    }

    if (fangzu == "") {
        alert("房租不能为空");
        boolean= false;
        return false;
    }

    if (waibao == "") {
        alert("外包不能为空");
        boolean= false;
        return false;
    }

        if (zhaodaifei == "") {
            alert("招待费不能为空");
            boolean= false;
            return false;
        }
        if (tongxunfei == "") {
            alert("通讯费不能为空");
            boolean= false;
            return false;
        }

        if (riyongpin == "") {
            alert("日用品不能为空");
            boolean= false;
            return false;
        }
        if (youjifei == "") {
            alert("邮寄费不能为空");
            boolean= false;
            return false;
        }
        if (zuchefei == "") {
            alert("租车费不能为空");
            boolean= false;
            return false;
        }

        if (shebeixiuli == "") {
            alert("设备修理费不能为空");
            boolean= false;
            return false;
        }
        if (gaosutongxing == "") {
            alert("高速通行费不能为空");
            boolean= false;
            return false;
        }

        if (chuchaijiayou == "") {
            alert("出差加油费不能为空");
            boolean= false;
            return false;
        }
        if (shineigongjiao == "") {
            alert("市内公交出租费不能为空");
            boolean= false;
            return false;
        }
        if (xiuchefei == "") {
            alert("修车费不能为空");
            boolean= false;
            return false;
        }

        if (rengong == "") {
            alert("人工费不能为空");
            boolean= false;
            return false;
        }
        if (shuidian == "") {
            alert("水电费不能为空");
            boolean= false;
            return false;
        }
        if (chepiao == "") {
            alert("车票不能为空");
            boolean= false;
            return false;
        }
        if (qita == "") {
            alert("其他不能为空");
            boolean= false;
            return false;
        }
        if (yanglao == "") {
            alert("养老保险不能为空");
            boolean= false;
            return false;
        }
        if (yiliao == "") {
            alert("医疗保险不能为空");
            boolean= false;
            return false;
        }
            if (gongshang == "") {
                alert("工伤不能为空");
                boolean= false;
                return false;
            }
            if (shiye == "") {
                alert("失业保险不能为空");
                boolean= false;
                return false;
            }
            if (shengyu == "") {
                alert("生育保险不能为空");
                boolean= false;
                return false;
            }
    if (zhongdui == "请选择") {
        alert("请选择中队");
        boolean= false;
        return false;
    }
        if(boolean==true) {
            var url = "add?name=" + xiangmuname + "&ren=" + renshu + "&gongshang=" + gongshang + "&yiliao=" + yiliao + "&yanglao=" + yanglao + "&shengyu=" + shengyu + "&shiye=" + shiye + "&shi=" + shichang + "&chepiao=" + chepiao + "&chuchai=" + chuchaijiayou + "&fangzu=" + fangzu +
                "&tongxing=" + tongxunfei + "&gongzi=" + gongzi + "&qita=" + qita + "&rengong=" + rengong + "&riyong=" + riyongpin + "&shebei=" + shebeixiuli + "&shuidian=" + shuidian + "&shuifei=" + shuifei + "&tongxun=" + tongxunfei + "&waibao=" + waibao +
                "&gongjiao=" + shineigongjiao + "&zhaodai=" + zhaodaifei + "&zuche=" + zuchefei + "&xiuche=" + xiuchefei + "&youji=" + youjifei+"&zhongdui="+zhongdui;
            //alert(url);
            $.get(url, function (data) {
                $("#jg").text(data);
            });

        }
}



function addTab(title, url) {
    if ($('#tts').tabs('exists', title)) {
        $('#tts').tabs('select', title);
    } else {
        var content = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
        $('#tts').tabs('add', {
            title: title,
            content: content,
            closable: true
        });
    }}
function check1(){
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
    var gongzi=document.getElementById("gongzi").value;
    var  shineigongjiao=document.getElementById("shineigongjiao").value;
    var zhongdui=document.getElementById("zhongdui").value;

    var str=document.getElementById("kaishitime").value;
    var kaishitime=str.substring(6,10)+"-"+str.substring(0,2)+"-"+str.substring(3,5);

    var str1=document.getElementById("time").value;
    var time=str1.substring(6,10)+"-"+str1.substring(0,2)+"-"+str1.substring(3,5);

    var boolean=true;
    if(xiangmuname ==  null || xiangmuname == ''){
        alert("合同名不能为空");
        boolean= false;
        return false;
    }
/*    if (renshu == "") {
        alert("人数不能为空,可以为0");
        boolean= false;
        return false;
    }
    if (gongzi == "") {
        alert("工资不能为空");
        boolean= false;
        return false;
    }*/

    if (shichang == "") {
        alert("时长不能为空");
        boolean= false;
        return false;
    }

    if (shuifei == "") {
        alert("税费不能为空");
        boolean= false;
        return false;
    }

    if (fangzu == "") {
        alert("房租不能为空");
        boolean= false;
        return false;
    }

    if (waibao == "") {
        alert("外包不能为空");
        boolean= false;
        return false;
    }

    if (zhaodaifei == "") {
        alert("招待费不能为空");
        boolean= false;
        return false;
    }
    if (tongxunfei == "") {
        alert("通讯费不能为空");
        boolean= false;
        return false;
    }

    if (riyongpin == "") {
        alert("日用品不能为空");
        boolean= false;
        return false;
    }
    if (youjifei == "") {
        alert("邮寄费不能为空");
        boolean= false;
        return false;
    }
    if (zuchefei == "") {
        alert("租车费不能为空");
        boolean= false;
        return false;
    }

    if (shebeixiuli == "") {
        alert("设备修理费不能为空");
        boolean= false;
        return false;
    }
    if (gaosutongxing == "") {
        alert("高速通行费不能为空");
        boolean= false;
        return false;
    }

    if (chuchaijiayou == "") {
        alert("出差加油费不能为空");
        boolean= false;
        return false;
    }
    if (shineigongjiao == "") {
        alert("市内公交出租费不能为空");
        boolean= false;
        return false;
    }
    if (xiuchefei == "") {
        alert("修车费不能为空");
        boolean= false;
        return false;
    }

    if (rengong == "") {
        alert("人工费不能为空");
        boolean= false;
        return false;
    }
    if (shuidian == "") {
        alert("水电费不能为空");
        boolean= false;
        return false;
    }
    if (chepiao == "") {
        alert("车票不能为空");
        boolean= false;
        return false;
    }
    if (qita == "") {
        alert("其他不能为空");
        boolean= false;
        return false;
    }
    if (zhongdui == "请选择") {
        alert("请选择中队");
        boolean= false;
        return false;
    }
    if (str == "") {
        alert("实施时间不能为空");
        boolean= false;
        return false;
    }
    if (str1 == "") {
        alert("实施时间不能为空");
        boolean= false;
        return false;
    }
    if(boolean==true) {
        var url = "addS?name=" + xiangmuname + "&ren=" + renshu +"&shi=" + shichang + "&chepiao=" + chepiao + "&chuchai=" + chuchaijiayou + "&fangzu=" + fangzu +
            "&tongxing=" + tongxunfei + "&gongzi=" + gongzi + "&qita=" + qita + "&rengong=" + rengong + "&riyong=" + riyongpin + "&shebei=" + shebeixiuli + "&shuidian=" + shuidian + "&shuifei=" + shuifei + "&tongxun=" + tongxunfei + "&waibao=" + waibao +
            "&gongjiao=" + shineigongjiao + "&zhaodai=" + zhaodaifei + "&zuche=" + zuchefei + "&xiuche=" + xiuchefei + "&youji=" + youjifei+"&kaishitime="+kaishitime+"&zhongdui="+zhongdui+"&time="+time;
        //alert(url);
        $.get(url, function (data) {
            $("#jg").text(data);
        });

    }
}
function zd() {
    var zhongdui=document.getElementById("zhongdui").value;
    if (zhongdui == "请选择") {
        alert("请选择中队");
        boolean= false;
        return false;
    }
    var boolean=true;
    if(boolean==true) {
        var url = "sel?zhongdui=" +zhongdui;
        //alert(url);
        $.get(url, function (data) {
            $("#gongzi").val(data[0]);
            $("#renshu").val(data[1]);
        });

    }
}























