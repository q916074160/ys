$(function () {

    $('#dg1').datagrid({
        //双击事件
//            onDblClickRow
        //onClickCell
        //单击事件
        onDblClickRow: function (rowIndex, rowData) {
            var row = $('#dg1').datagrid('getSelected');
            if(row==null){
                return row;
            }
            if (row) {
//                    document.getElementById("a").value=row.shiid;
                $("#shiid").textbox("setValue", row.shiid);
//                        $("#bid").textbox("setValue", row.bid);
                $("#xiangmuname").textbox("setValue", row.xiangmuname);
                $("#renshu").textbox("setValue", row.renshu);
                $("#gongzi").textbox("setValue", row.gongzi);
                $("#shichang").textbox("setValue", row.shichang);
                $("#shuifei").textbox("setValue", row.shuifei);
                $("#fangzu").textbox("setValue", row.fangzu);
                $("#waibao").textbox("setValue", row.waibao);
                $("#zhaodaifei").textbox("setValue", row.zhaodaifei);
                $("#tongxunfei").textbox("setValue", row.tongxunfei);
                $("#riyongpin").textbox("setValue", row.riyongpin);
                $("#youjifei").textbox("setValue", row.youjifei);
                $("#zuchefei").textbox("setValue", row.zuchefei);
                $("#shebeixiuli").textbox("setValue", row.shebeixiuli);
                $("#gaosutongxing").textbox("setValue", row.gaosutongxing);
                $("#chuchaijiayou").textbox("setValue", row.chuchaijiayou);
                $("#shineigongjiao").textbox("setValue", row.shineigongjiao);
                $("#xiuchefei").textbox("setValue", row.xiuchefei);
                $("#rengong").textbox("setValue", row.rengong);
                $("#shuidian").textbox("setValue", row.shuidian);
                $("#qita").textbox("setValue", row.qita);
                $("#chepiao").textbox("setValue", row.chepiao);
                $('#w').window('open');
            }
        }
    });
});




$(function () {
    $('#dg3').datagrid({
        //双击事件
        //            onDblClickRow
        //单击事件
        onDblClickRow: function (rowIndex, rowData) {
            var rows = $('#dg3').datagrid('getSelected');
            if (rows) {
                $("#xiangmuname1").textbox("setValue", rows.xiangmuname);
                $("#renshu1").textbox("setValue", rows.renshu);
                $("#gongzi1").textbox("setValue", rows.gongzi);
                $("#shichang1").textbox("setValue", rows.shichang);
                $("#shuifei1").textbox("setValue", rows.shuifei);
                $("#fangzu1").textbox("setValue", rows.fangzu);
                $("#waibao1").textbox("setValue", rows.waibao);
                $("#zhaodaifei00").textbox("setValue", rows.zhaodaifei)
                $("#tongxunfei1").textbox("setValue", rows.tongxunfei);
                $("#riyongpin1").textbox("setValue", rows.riyongpin);
                $("#youjifei1").textbox("setValue", rows.youjifei);
                $("#zuchefei1").textbox("setValue", rows.zuchefei);
                $("#shebeixiuli1").textbox("setValue", rows.shebeixiuli);
                $("#gaosutongxing1").textbox("setValue", rows.gaosutongxing);
                $("#chuchaijiayou1").textbox("setValue", rows.chuchaijiayou);
                $("#shineigongjiao1").textbox("setValue", rows.shineigongjiao);
                $("#xiuchefei1").textbox("setValue", rows.xiuchefei);
                $("#rengong1").textbox("setValue", rows.rengong);
                $("#shuidian1").textbox("setValue", rows.shuidian);
                $("#chepiao1").textbox("setValue", rows.chepiao);
                $('#w1').window('open');
            }
        }
    });
});

function shisuan () {
    var shiid = document.getElementById("shiid").value;
    var xiangmuname = document.getElementById("xiangmuname").value;
    var renshu = document.getElementById("renshu").value;
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
    var gongzi = document.getElementById("gongzi").value;
    var qita = document.getElementById("qita").value;
    var shineigongjiao = document.getElementById("shineigongjiao").value;

    var url = "update?xiangmuname=" + xiangmuname + "&renshu=" + renshu + "&chepiao=" + chepiao + "&chuchaijiayou=" + chuchaijiayou + "&fangzu=" + fangzu +
        "&tongxunfei=" + tongxunfei + "&gongzi=" + gongzi+ "&rengong=" + rengong + "&riyongpin=" + riyongpin + "&shebeixiuli=" + shebeixiuli + "&shuidian=" + shuidian + "&shuifei=" + shuifei + "&tongxunfei=" + tongxunfei + "&waibao=" + waibao +
        "&shineigongjiao=" + shineigongjiao + "&zhaodaifei=" + zhaodaifei + "&zuchefei=" + zuchefei + "&xiuchefei=" + xiuchefei + "&youjifei=" + youjifei+"&shiid="+shiid+"&gaosutongxing="+gaosutongxing+"&qita="+qita;
    if (confirm("是否修改？")) {
        $.get(url);
    }
    $('#dg1').datagrid('reload');
}


