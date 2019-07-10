function check(){
    var xiangmuname = document.getElementsByName("xiangmuname").value;
    var renshu = document.getElementsByName("renshu").value;
    var shichang = document.getElementsByName("shichang").value;
    var shuifei = document.getElementsByName("shuifei").value;
    var fangzu = document.getElementsByName("fangzu").value;
    var waibao = document.getElementsByName("waibao").value;
    var zhaodaifei = document.getElementsByName("zhaodaifei").value;
    var tongxunfei = document.getElementsByName("tongxunfei").value;
    var riyongpin = document.getElementsByName("riyongpin").value;
    var youjifei = document.getElementsByName("youjifei").value;
    var zuchefei = document.getElementsByName("zuchefei").value;
    var shebeixiuli = document.getElementsByName("shebeixiuli").value;
    var gaosutongxing = document.getElementsByName("gaosutongxing").value;
    var chuchaijiayou = document.getElementsByName("chuchaijiayou").value;
    var xiuchefei = document.getElementsByName("xiuchefei").value;
    var rengong = document.getElementsByName("rengong").value;
    var shuidian = document.getElementsByName("shuidian").value;
    var chepiao = document.getElementsByName("chepiao").value;
    var qita = document.getElementsByName("qita").value;
    var yanglao = document.getElementsByName("yanglao").value;
    var yiliao = document.getElementsByName("yiliao").value;
    var gongshang = document.getElementsByName("gongshang").value;
    var shiye = document.getElementsByName("shiye").value;
    var shengyu = document.getElementsByName("shengyu").value;
    var gongzi=document.getElementsByName("gongzi").value;
    var  shineigongjiao=document.getElementsByName("shineigongjiao").value;
    var zhongdui=document.getElementsByName("zhongdui").value;
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
        alert("请选择一个");
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
function check(){
    var xiangmuname = document.getElementsByName("xiangmuname").value;
    var renshu = document.getElementsByName("renshu").value;
    var shichang = document.getElementsByName("shichang").value;
    var shuifei = document.getElementsByName("shuifei").value;
    var fangzu = document.getElementsByName("fangzu").value;
    var waibao = document.getElementsByName("waibao").value;
    var zhaodaifei = document.getElementsByName("zhaodaifei").value;
    var tongxunfei = document.getElementsByName("tongxunfei").value;
    var riyongpin = document.getElementsByName("riyongpin").value;
    var youjifei = document.getElementsByName("youjifei").value;
    var zuchefei = document.getElementsByName("zuchefei").value;
    var shebeixiuli = document.getElementsByName("shebeixiuli").value;
    var gaosutongxing = document.getElementsByName("gaosutongxing").value;
    var chuchaijiayou = document.getElementsByName("chuchaijiayou").value;
    var xiuchefei = document.getElementsByName("xiuchefei").value;
    var rengong = document.getElementsByName("rengong").value;
    var shuidian = document.getElementsByName("shuidian").value;
    var chepiao = document.getElementsByName("chepiao").value;
    var qita = document.getElementsByName("qita").value;
    var yanglao = document.getElementsByName("yanglao").value;
    var yiliao = document.getElementsByName("yiliao").value;
    var gongshang = document.getElementsByName("gongshang").value;
    var shiye = document.getElementsByName("shiye").value;
    var shengyu = document.getElementsByName("shengyu").value;
    var gongzi=document.getElementsByName("gongzi").value;
    var  shineigongjiao=document.getElementsByName("shineigongjiao").value;

    var kaishitime=document.getElementsByName("kaishitime").value;
    var zhongdui=document.getElementsByName("zhongdui").value;
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
        alert("请选择一个");
        boolean= false;
        return false;
    }
    if (kaishitime == "") {
        alert("实施时间不能为空");
        boolean= false;
        return false;
    }
    if(boolean==true) {
        var url = "addS?name=" + xiangmuname + "&ren=" + renshu + "&gongshang=" + gongshang + "&yiliao=" + yiliao + "&yanglao=" + yanglao + "&shengyu=" + shengyu + "&shiye=" + shiye + "&shi=" + shichang + "&chepiao=" + chepiao + "&chuchai=" + chuchaijiayou + "&fangzu=" + fangzu +
            "&tongxing=" + tongxunfei + "&gongzi=" + gongzi + "&qita=" + qita + "&rengong=" + rengong + "&riyong=" + riyongpin + "&shebei=" + shebeixiuli + "&shuidian=" + shuidian + "&shuifei=" + shuifei + "&tongxun=" + tongxunfei + "&waibao=" + waibao +
            "&gongjiao=" + shineigongjiao + "&zhaodai=" + zhaodaifei + "&zuche=" + zuchefei + "&xiuche=" + xiuchefei + "&youji=" + youjifei+"&kaishitime="+kaishitime+"&zhongdui="+zhongdui;
        //alert(url);
        $.get(url, function (data) {
            $("#jg").text(data);
        });

    }
}
























