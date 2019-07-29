<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <script type="text/javascript" src="/static/easyUi/jquery.min.js"></script>
    <script src="/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/js/bootbox.min.js"></script>


    <link rel="stylesheet" type="text/css" href="static/easyUi/themes/icon.css">
    <script type="text/javascript" src="static/easyUi/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="static/easyUi/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="static/easyUi/demo/demo.css">
    <script src="static/easyUi/locale/easyui-lang-zh_CN.js"></script>

    <script>

        $(function () {

            $('#dg1').datagrid({

                //双击事件
//            onDblClickRow
                //单击事件

                onClickCell: function (rowIndex, rowData) {
                    $('#w').window('open');
                    var row = $('#dg1').datagrid('getSelected');

                    alert(row)

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

                    }
                }
            });



        });
//        $('#dg1').datagrid('clearSelections');

        //    $(function () {
        //        $('#dg3').datagrid({
        //            //双击事件
        ////            onDblClickRow
        //            //单击事件
        //            onClickCell: function (rowIndex, rowData) {
        //                $('#w1').window('open');
        //                var rows = $('#dg3').datagrid('getSelected');
        //                if (rows) {
        //                    $("#shiid1").textbox("setValue", row.shiid);
        //                    $("#xiangmuname1").textbox("setValue", row.xiangmuname);
        //                    $("#renshu1").textbox("setValue", row.renshu);
        //                    $("#gongzi1").textbox("setValue", row.gongzi);
        //                    $("#shichang1").textbox("setValue", row.shichang);
        //                    $("#shuifei1").textbox("setValue", row.shuifei);
        //                    $("#fangzu1").textbox("setValue", row.fangzu);
        //                    $("#waibao1").textbox("setValue", row.waibao);
        //                    $("#zhaodaifei1").textbox("setValue", row.zhaodaifei);
        //                    $("#tongxunfei1").textbox("setValue", row.tongxunfei);
        //                    $("#riyongpin1").textbox("setValue", row.riyongpin);
        //                    $("#youjifei1").textbox("setValue", row.youjifei);
        //                    $("#zuchefei1").textbox("setValue", row.zuchefei);
        //                    $("#shebeixiuli1").textbox("setValue", row.shebeixiuli);
        //                    $("#gaosutongxing1").textbox("setValue", row.gaosutongxing);
        //                    $("#chuchaijiayou1").textbox("setValue", row.chuchaijiayou);
        //                    $("#shineigongjiao1").textbox("setValue", row.shineigongjiao);
        //                    $("#xiuchefei1").textbox("setValue", row.xiuchefei);
        //                    $("#rengong1").textbox("setValue", row.rengong);
        //                    $("#shuidian1").textbox("setValue", row.shuidian);
        //                    $("#chepiao1").textbox("setValue", row.chepiao);
        //
        //
        //                }
        //            }
        //        });
        //    });
        //    function shisuan () {
        //        var shiid = document.getElementById("shiid").value;
        //        var xiangmuname = document.getElementById("xiangmuname").value;
        //        var renshu = document.getElementById("renshu").value;
        //        var shichang = document.getElementById("shichang").value;
        //        var shuifei = document.getElementById("shuifei").value;
        //        var fangzu = document.getElementById("fangzu").value;
        //        var waibao = document.getElementById("waibao").value;
        //        var zhaodaifei = document.getElementById("zhaodaifei").value;
        //        var tongxunfei = document.getElementById("tongxunfei").value;
        //        var riyongpin = document.getElementById("riyongpin").value;
        //        var youjifei = document.getElementById("youjifei").value;
        //        var zuchefei = document.getElementById("zuchefei").value;
        //        var shebeixiuli = document.getElementById("shebeixiuli").value;
        //        var gaosutongxing = document.getElementById("gaosutongxing").value;
        //        var chuchaijiayou = document.getElementById("chuchaijiayou").value;
        //        var xiuchefei = document.getElementById("xiuchefei").value;
        //        var rengong = document.getElementById("rengong").value;
        //        var shuidian = document.getElementById("shuidian").value;
        //        var chepiao = document.getElementById("chepiao").value;
        //        var gongzi = document.getElementById("gongzi").value;
        //        var qita = document.getElementById("qita").value;
        //        var shineigongjiao = document.getElementById("shineigongjiao").value;
        //
        //        var url = "update?xiangmuname=" + xiangmuname + "&renshu=" + renshu + "&shichang=" + shichang + "&chepiao=" + chepiao + "&chuchaijiayou=" + chuchaijiayou + "&fangzu=" + fangzu +
        //            "&tongxunfei=" + tongxunfei + "&gongzi=" + gongzi+ "&rengong=" + rengong + "&riyongpin=" + riyongpin + "&shebeixiuli=" + shebeixiuli + "&shuidian=" + shuidian + "&shuifei=" + shuifei + "&tongxunfei=" + tongxunfei + "&waibao=" + waibao +
        //            "&shineigongjiao=" + shineigongjiao + "&zhaodaifei=" + zhaodaifei + "&zuchefei=" + zuchefei + "&xiuchefei=" + xiuchefei + "&youjifei=" + youjifei+"&shiid="+shiid+"&gaosutongxing="+gaosutongxing+"&qita="+qita;
        //        if (confirm("是否修改？")) {
        //            $.get(url);
        //        }
        //        $('#dg1').datagrid('reload');
        //    }




    </script>
</head>

<body>
<div class="box,easyui-layout">
    <div class="title">项目查询

        <%--<span style="position: absolute ;right: 15%;">对比结果:</span>--%>
        <%--<c:if test="${xiangmuname!=null}">--%>
            <%--<span style="float: right;">--%>

                <%--<fmt:formatNumber value='${jiguo}' pattern='#,#00.00#'></fmt:formatNumber>--%>
            <%--</span>--%>
        <%--</c:if>--%>
    </div>
    <div class="content,easyui-layout" data-options="region:'center'" style="height: 100%">
        <!--搜索输入框及查询、重置按钮-->
        <form method="get" action="#" id="form">
            <div class="container content_width">
                <div class="person_search">
                    <div class="search_input">
                        <div class="input-group mb-3">
                            <span>名称：</span>
                            <input id="Ktext" type="text" class="form-control" placeholder="请输入项目名称" name="xiangmuname">
                        </div>
                    </div>
                    <div class="search_input">
                        <div class="input-group mb-3">
                            <span>请选择中队：</span>
                            <%--  <input id="job_num" type="text" class="form-control" placeholder="请输入工号">--%>
                            <select class="form-control" name="bid" id="bid">
                                <option value="">--请选择--</option>
                                <c:forEach items="${bumenList}" var="bumenList">
                                    <option value="${bumenList.bid}">${bumenList.bname}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="search_input">
                        <span>开始时间：</span>
                        <input class="easyui-datebox" style="width:65%" name="kaishitime" id="kaishitime">
                    </div>

                    <div class="search_input">
                        <span>结束时间：</span>
                        <input class="easyui-datebox" style="width:65%" name="time" id="time">
                    </div>
                    <div class="search_input" style="margin-left:80px">
                        <%--onclick="showqueryBill()"--%>
                        <button class="btn btn-primary search_btn" type="button" id="search_btn">查询</button>
                    </div>

                    <div class="search_input">
                        <c:if test="${list!=null}">
                            <button class="btn btn-primary search_btn" type="button" id="dc_btn">导出</button>
                        </c:if>
                    </div>

                </div>
                <div class="line"></div>

            </div>
        </form>
        <div class="easyui-layout" style="height:100%;" data-options="region:'center'">
            <table id="dg1" title="实算信息" style="width:100%;height:40%" data-options="region:'south',
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
              collapsible:true">
                <thead>

                <%--<tr>--%>
                    <%--<th field="time" width="110">所属时间</th>--%>
                    <%--<th field="xiangmuname" width="80">名称</th>--%>
                    <%--<th field="bid" width="80">中队</th>--%>
                    <%--<th field="renshu" width="100">人数</th>--%>
                    <%--<th field="gongzi" width="80">工资</th>--%>
                    <%--<th field="shichang" width="80" align="right">项目时长</th>--%>
                    <%--<th field="shuifei" width="80" align="right">税</th>--%>
                    <%--<th field="fangzu" width="100" align="right">房租</th>--%>
                    <%--<th field="waibao" width="110">外包</th>--%>
                    <%--<th field="zhaodaifei" width="80">招待</th>--%>
                    <%--<th field="tongxunfei" width="100">通讯</th>--%>
                    <%--<th field="riyongpin" width="80">日用品</th>--%>
                    <%--<th field="youjifei" width="80" align="right">邮寄</th>--%>
                    <%--<th field="zuchefei" width="80" align="right">租车</th>--%>
                    <%--<th field="shebeixiuli" width="100" align="right">修理</th>--%>
                    <%--<th field="gaosutongxing" width="110">通行</th>--%>
                    <%--<th field="chuchaijiayou" width="80">出差加油</th>--%>
                    <%--<th field="shineigongjiao" width="100">公交出租</th>--%>
                    <%--<th field="xiuchefei" width="80">修洗车</th>--%>
                    <%--<th field="rengong" width="80" align="right">人工</th>--%>
                    <%--<th field="shuidian" width="80" align="right">水电</th>--%>
                    <%--<th field="chepiao" width="100" align="right">车票</th>--%>
                    <%--<th field="qita" width="100" align="right">其他</th>--%>
                    <%--<th field="jieguo" width="110">总和</th>--%>

                <%--</tr>--%>
                </thead>



                <div id="w" class="easyui-window" title="查询实算信息"
                     data-options="iconCls:'icon-save',minimizable:false,closed:true"
                     style="width:60%;height:90%;padding:10px;overflow:hidden;" >

                    <form>
                        <input class="easyui-textbox" id="shiid" name="shiid" value=" ">
                        <div>
                            <div style="margin-bottom:20px">
                                <div>项目名称:</div>

                                <input class="easyui-textbox" id="xiangmuname" name="xiangmuname" value="">
                            </div>
                            <div style="margin-bottom:20px">
                                <div>人数:</div>
                                <input class="easyui-textbox" id="renshu" name="renshu"value="">
                            </div>
                            <div style="margin-bottom:20px">
                                <div>工资:</div>
                                <input class="easyui-textbox" id="gongzi" name="gongzi"value="">
                            </div>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>项目时长:</div>--%>
                                <%--<input class="easyui-textbox" id="shichang" name="shichang"value="">--%>
                            <%--</div>--%>

                            <div style="margin-bottom:20px">
                                <div>税费:</div>
                                <input class="easyui-textbox" id="shuifei"name="shuifei" value="">
                            </div>
                            <div style="margin-bottom:20px">
                                <div>房租:</div>
                                <input class="easyui-textbox" id="fangzu" name="fangzu"value=""></div>
                            <div style="margin-bottom:20px">
                                <div>外包:</div>
                                <input class="easyui-textbox" id="waibao" name="waibao"value="">
                            </div>


                        </div>


                        <div style="position: absolute;left: 35%;top: 7%">

                            <div style="margin-bottom:20px">
                                <div>招待费:</div>
                                <input class="easyui-textbox" id="zhaodaifei"name="zhaodaifei"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>通讯费:</div>
                                <input class="easyui-textbox"
                                       id="tongxunfei"name="tongxunfei"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>日用品:</div>
                                <input class="easyui-textbox"
                                       id="riyongpin"name="riyongpin"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>邮寄费:</div>
                                <input class="easyui-textbox" id="youjifei"name="youjifei" value=""></div>

                            <div style="margin-bottom:20px">
                                <div>租车费:</div>
                                <input class="easyui-textbox"
                                       id="zuchefei"name="zuchefei"
                                       value=""></div>
                            <div style="margin-bottom:20px">
                                <div>设备修理费:</div>
                                <input class="easyui-textbox"
                                       id="shebeixiuli"name="shebeixiuli"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>其他:</div>
                                <input class="easyui-textbox"
                                       id="qita"name="qita"
                                       value=""></div>

                        </div>

                        <div style="position: absolute;left: 70%;top: 7%">



                            <div style="margin-bottom:20px">
                                <div>高速通行费:</div>
                                <input class="easyui-textbox"
                                       id="gaosutongxing"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>出差加油费:</div>
                                <input class="easyui-textbox"
                                       id="chuchaijiayou"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>市内公交出租费:</div>
                                <input class="easyui-textbox"
                                       id="shineigongjiao"
                                       value=""></div>


                            <div style="margin-bottom:20px">
                                <div>(修/洗)车费:</div>
                                <input class="easyui-textbox"
                                       id="xiuchefei"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>人工费:</div>
                                <input class="easyui-textbox"
                                       id="rengong"
                                       value=""></div>

                            <div style="margin-bottom:20px">
                                <div>水电费:</div>
                                <input class="easyui-textbox"
                                       id="shuidian"
                                       value=""></div>
                            <div style="margin-bottom:20px">
                                <div>(火/汽)车/飞机票:</div>
                                <input
                                        class="easyui-textbox" id="chepiao" value=""></div>
                        </div>
                        <div>
                            <a href="#" class="easyui-linkbutton" onclick="shisuan()">修改</a>

                        </div>
                    </form>
                </div>
                <tbody id="show_tbody1">
                <c:forEach items="${list}" var="list">
                    <c:if test="${xiangmuname!=null}">
                        <tr>
                            <td>${list.shiid}</td>
                            <td>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${list.time}"></fmt:formatDate>
                            </td>
                            <td>${list.xiangmuname}</td>
                            <c:if test="${list.bid==1}">
                                <td>一中队</td>
                            </c:if>

                            <c:if test="${list.bid==2}">
                                <td>二中队</td>
                            </c:if>

                            <c:if test="${list.bid==3}">
                                <td>三中队</td>
                            </c:if>

                            <c:if test="${list.bid==4}">
                                <td>四中队</td>
                            </c:if>

                            <c:if test="${list.bid==5}">
                                <td>五中队</td>
                            </c:if>

                            <c:if test="${list.bid==6}">
                                <td>内业</td>
                            </c:if>

                            <c:if test="${list.bid==7}">
                                <td>管理</td>
                            </c:if>


                            <td>${list.renshu}</td>
                            <td>${list.gongzi}</td>
                            <td>${list.shuifei}</td>
                            <td>${list.fangzu}</td>
                            <td>${list.waibao}</td>
                            <td>${list.zhaodaifei}</td>
                            <td>${list.tongxunfei}</td>
                            <td>${list.riyongpin}</td>
                            <td>${list.youjifei}</td>
                            <td>${list.zuchefei}</td>
                            <td>${list.shebeixiuli}</td>
                            <td>${list.gaosutongxing}</td>
                            <td>${list.chuchaijiayou}</td>
                            <td>${list.shineigongjiao}</td>
                            <td>${list.xiuchefei}</td>
                            <td>${list.rengong}</td>
                            <td>${list.shuidian}</td>
                            <td>${list.chepiao}</td>
                            <td>${list.qita}</td>
                            <td>${list.jieguo}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
<tbody>
<tr>
    <th>dasda</th>
</tr>
</tbody>
                <tbody>
         <c:forEach items="${sumShiSuan}" var="sumShiSuan">
                    <c:if test="${xiangmuname!=null}">
                        <tr>

                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>${sumShiSuan.xiangmuname}</td>
                            <c:if test="${sumShiSuan.bid==1}">
                                <td>一中队</td>
                            </c:if>

                            <c:if test="${sumShiSuan.bid==2}">
                                <td>二中队</td>
                            </c:if>

                            <c:if test="${sumShiSuan.bid==3}">
                                <td>三中队</td>
                            </c:if>

                            <c:if test="${sumShiSuan.bid==4}">
                                <td>四中队</td>
                            </c:if>

                            <c:if test="${sumShiSuan.bid==5}">
                                <td>五中队</td>
                            </c:if>

                            <c:if test="${sumShiSuan.bid==6}">
                                <td>内业</td>
                            </c:if>

                            <c:if test="${sumShiSuan.bid==7}">
                                <td>管理</td>
                            </c:if>

                            <td>${sumShiSuan.renshu}</td>
                            <td>${sumShiSuan.gongzi}</td>
                            <%--<td>${sumShiSuan.shichang}</td>--%>
                            <td>${sumShiSuan.shuifei}</td>
                            <td>${sumShiSuan.fangzu}</td>
                            <td>${sumShiSuan.waibao}</td>
                            <td>${sumShiSuan.zhaodaifei}</td>
                            <td>${sumShiSuan.tongxunfei}</td>
                            <td>${sumShiSuan.riyongpin}</td>
                            <td>${sumShiSuan.youjifei}</td>
                            <td>${sumShiSuan.zuchefei}</td>
                            <td>${sumShiSuan.shebeixiuli}</td>
                            <td>${sumShiSuan.gaosutongxing}</td>
                            <td>${sumShiSuan.chuchaijiayou}</td>
                            <td>${sumShiSuan.shineigongjiao}</td>
                            <td>${sumShiSuan.xiuchefei}</td>
                            <td>${sumShiSuan.rengong}</td>
                            <td>${sumShiSuan.shuidian}</td>
                            <td>${sumShiSuan.chepiao}</td>
                            <td>${sumShiSuan.jieguo}</td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${sumShiSuan.kaishitime}"></fmt:formatDate></td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            <%--<table id="dg2" class="easyui-datagrid" title="对比信息" style="width:100%;height:30%"--%>
                   <%--data-options="--%>
                <%--region:'center',--%>
                <%--rownumbers:true,--%>
                <%--singleSelect:true,--%>
                <%--autoRowHeight:false,--%>
                <%--pagination:true,--%>
                <%--pageSize:10,--%>
                <%--collapsible:true">--%>
                <%--<thead>--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'renshu',width:100">人数</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'gongzi',width:80,align:'right'">工资</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shichang',width:80,align:'right'">项目时长</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shuifei',width:250">税</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'fangzu',width:60,align:'center'">房租</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'waibao',width:80">外包</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'zhaodaifei',width:100">招待</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'tongxunfei',width:80,align:'right'">通讯</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'riyongpin',width:80,align:'right'">日用品</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'youjifei',width:250">邮寄</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'zuchefei',width:60,align:'center'">租车</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shebeixiuli',width:80">修理</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'gaosutongxing',width:100">通行</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'chuchaijiayou',width:80,align:'right'">出差加油</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shineigongjiao',width:80,align:'right'">公交出租</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'xiuchefei',width:250">修洗车</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'rengong',width:60,align:'center'">人工</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shuidian',width:80">水电</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'chepiao',width:100">车票</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'jieguo',width:80,align:'right'">总和</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--</thead>--%>
                <%--<tbody id="show_tbody12">--%>
                <%--<c:if test="${xiangmuname!=null}">--%>
                    <%--<tr>--%>
                        <%--<td>${renshu}</td>--%>
                        <%--<td>${gongzi}</td>--%>
                        <%--&lt;%&ndash;<td>${shichang}</td>&ndash;%&gt;--%>
                        <%--<td>${shuifei}</td>--%>
                        <%--<td>${fangzu}</td>--%>
                        <%--<td>${waibao}</td>--%>
                        <%--<td>--%>
                            <%--<fmt:formatNumber value='${zhaodaifei}' pattern='#,#00.00#'></fmt:formatNumber>--%>
                        <%--</td>--%>
                        <%--<td>${tongxunfei}</td>--%>
                        <%--<td>${riyongpin}</td>--%>
                        <%--<td>${youjifei}</td>--%>
                        <%--<td>${zuchefei}</td>--%>
                        <%--<td>${shebeixiuli}</td>--%>
                        <%--<td>${gaosutongxing}</td>--%>
                        <%--<td>${chuchaijiayou}</td>--%>
                        <%--<td>${shineigongjiao}</td>--%>
                        <%--<td>${xiuchefei}</td>--%>
                        <%--<td>${rengong}</td>--%>
                        <%--<td>${shuidian}</td>--%>
                        <%--<td>${chepiao}</td>--%>
                        <%--<td>--%>
                            <%--<fmt:formatNumber value='${jieguo}' pattern='#,#00.00#'></fmt:formatNumber>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</c:if>--%>
                <%--</tbody>--%>
            <%--</table>--%>
            <%--<table id="dg3" class="easyui-datagrid" title="预算信息" style="width:100%;height:30%"--%>
                   <%--data-options="--%>
              <%--region:'north',--%>
				<%--rownumbers:true,--%>
				<%--singleSelect:true,--%>
				<%--autoRowHeight:false,--%>
				<%--pagination:true,--%>
				<%--pageSize:10,--%>
              <%--collapsible:true">--%>
                <%--<thead>--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'xiangmuname',width:80">名称</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'renshu',width:100">人数</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'gongzi',width:80,align:'right'">工资</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shichang',width:80,align:'right'">项目时长</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shuifei',width:250">税</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'fangzu',width:60,align:'center'">房租</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'waibao',width:80">外包</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'zhaodaifei',width:100">招待</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'tongxunfei',width:80,align:'right'">通讯</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'riyongpin',width:80,align:'right'">日用品</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'youjifei',width:250">邮寄</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'zuchefei',width:60,align:'center'">租车</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shebeixiuli',width:80">修理</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'gaosutongxing',width:100">通行</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'chuchaijiayou',width:80,align:'right'">出差加油</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shineigongjiao',width:80,align:'right'">公交出租</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'xiuchefei',width:250">修洗车</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'rengong',width:60,align:'center'">人工</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'shuidian',width:80">水电</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'chepiao',width:100">车票</th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<th data-options="field:'jieguo',width:80,align:'right'">总和</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--</thead>--%>
                <%--<div id="w1" class="easyui-window" title="查询预算信息"--%>
                     <%--data-options="iconCls:'icon-save',minimizable:false,closed:true"--%>
                     <%--style="width:60%;height:90%;padding:10px;overflow:hidden;">--%>
                    <%--<form>--%>
                        <%--<div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>项目名称:</div>--%>

                                <%--<input class="easyui-textbox" id="xiangmuname1" name="xiangmuname" value="" disabled>--%>
                            <%--</div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>人数:</div>--%>
                                <%--<input class="easyui-textbox" id="renshu1" name="renshu"value="" disabled>--%>
                            <%--</div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>工资:</div>--%>
                                <%--<input class="easyui-textbox" id="gongzi1" name="gongzi"value="" disabled>--%>
                            <%--</div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>项目时长:</div>--%>
                                <%--<input class="easyui-textbox" id="shichang1" name="shichang"value="" disabled>--%>
                            <%--</div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>税费:</div>--%>
                                <%--<input class="easyui-textbox" id="shuifei1"name="shuifei" value="" disabled>--%>
                            <%--</div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>房租:</div>--%>
                                <%--<input class="easyui-textbox" id="fangzu1" name="fangzu"value="" disabled></div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>外包:</div>--%>
                                <%--<input class="easyui-textbox" id="waibao1" name="waibao"value="" disabled>--%>
                            <%--</div>--%>


                        <%--</div>--%>


                        <%--<div style="position: absolute;left: 35%;top: 7%">--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>招待费:</div>--%>
                                <%--<input class="easyui-textbox" id="zhaodaifei1"name="zhaodaifei"--%>
                                       <%--value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>通讯费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="tongxunfei1"name="tongxunfei"--%>
                                       <%--value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>日用品:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="riyongpin1"name="riyongpin"--%>
                                       <%--value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>邮寄费:</div>--%>
                                <%--<input class="easyui-textbox" id="youjifei1"name="youjifei" value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>租车费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="zuchefei1"name="zuchefei"--%>
                                       <%--value="" disabled></div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>设备修理费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="shebeixiuli1"name="shebeixiuli"--%>
                                       <%--value="" disabled></div>--%>




                        <%--</div>--%>

                        <%--<div style="position: absolute;left: 70%;top: 7%">--%>



                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>高速通行费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="gaosutongxing1"--%>
                                       <%--value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>出差加油费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="chuchaijiayou1"--%>
                                       <%--value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>市内公交出租费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="shineigongjiao1"--%>
                                       <%--value="" disabled></div>--%>


                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>(修/洗)车费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="xiuchefei1"--%>
                                       <%--value="" disabled> </div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>人工费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="rengong1"--%>
                                       <%--value="" disabled></div>--%>

                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>水电费:</div>--%>
                                <%--<input class="easyui-textbox"--%>
                                       <%--id="shuidian1"--%>
                                       <%--value="" disabled></div>--%>
                            <%--<div style="margin-bottom:20px">--%>
                                <%--<div>(火/汽)车/飞机票:</div>--%>
                                <%--<input--%>
                                        <%--class="easyui-textbox" id="chepiao1" value="" disabled></div>--%>
                        <%--</div>--%>
                        <%--<div>--%>

                            <%--&lt;%&ndash;<input type="submit" value="修改">&ndash;%&gt;--%>
                        <%--</div>--%>
                    <%--</form>--%>


                <%--</div>--%>
                <%--<tbody id="show_tbody14">--%>
                <%--<c:forEach items="${yulist}" var="yulist">--%>
                    <%--<c:if test="${xiangmuname!=null}">--%>
                        <%--<tr>--%>
                            <%--<td>${yulist.xiangmuname}</td>--%>
                            <%--<td>${yulist.renshu}</td>--%>
                            <%--<td>${yulist.gongzi}</td>--%>
                            <%--<td>${yulist.shichang}</td>--%>
                            <%--<td>${yulist.shuifei}</td>--%>
                            <%--<td>${yulist.fangzu}</td>--%>
                            <%--<td>${yulist.waibao}</td>--%>
                            <%--<td>--%>
                                <%--<fmt:formatNumber value='${yulist.zhaodaifei}' pattern='#,#00.00#'></fmt:formatNumber>--%>
                            <%--</td>--%>
                            <%--<td>${yulist.tongxunfei}</td>--%>
                            <%--<td>${yulist.riyongpin}</td>--%>
                            <%--<td>${yulist.youjifei}</td>--%>
                            <%--<td>${yulist.zuchefei}</td>--%>
                            <%--<td>${yulist.shebeixiuli}</td>--%>
                            <%--<td>${yulist.gaosutongxing}</td>--%>
                            <%--<td>${yulist.chuchaijiayou}</td>--%>
                            <%--<td>${yulist.shineigongjiao}</td>--%>
                            <%--<td>${yulist.xiuchefei}</td>--%>
                            <%--<td>${yulist.rengong}</td>--%>
                            <%--<td>${yulist.shuidian}</td>--%>
                            <%--<td>${yulist.chepiao}</td>--%>
                            <%--<td>--%>
                                <%--<fmt:formatNumber value='${yulist.jieguo}' pattern='#,#00.00#'></fmt:formatNumber>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                    <%--</c:if>--%>
                <%--</c:forEach>--%>
                <%--</tbody>--%>
            <%--</table>--%>
        </div>
    </div>
</div>
<script src="/static/js/daochu.js"></script>
<script src="/static/js/fenye.js"></script>
</body>
</html>