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

        <script src="static/js/tanchu.js">

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

        <div class="easyui-layout" style="height:100%;" data-options="region:'center'">
            <table id="dg1" title="实算信息" style="width:100%;height:40%" data-options="region:'south',
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
              collapsible:true">



                <tbody id="show_tbody1">
                <c:forEach items="${list}" var="list">
                    <c:if test="${xiangmuname!=null}">
                        <tr>
                            <td>${list.shiid}</td>
                            <td>
                                <fmt:formatDate pattern="yyyy-MM" value="${list.time}"></fmt:formatDate>
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
         <c:forEach items="${sumShiSuan}" var="sumShiSuan">
                    <c:if test="${xiangmuname!=null}">
                        <tr>
                            <td>&nbsp;</td>
                            <td>实算合计</td>
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


            <div id="w1" class="easyui-window" title="查询预算信息"
                 data-options="iconCls:'icon-save',minimizable:false,closed:true"
                 style="width:60%;height:90%;padding:10px;overflow:hidden;">
                <form>
                    <div>
                        <div style="margin-bottom:20px">
                            <div>项目名称:</div>

                            <input class="easyui-textbox" id="xiangmuname1" name="xiangmuname1" value="" disabled>
                        </div>
                        <div style="margin-bottom:20px">
                            <div>人数:</div>
                            <input class="easyui-textbox" id="renshu1" name="renshu1"value="" disabled>
                        </div>
                        <div style="margin-bottom:20px">
                            <div>工资:</div>
                            <input class="easyui-textbox" id="gongzi1" name="gongzi1"value="" disabled>
                        </div>
                        <div style="margin-bottom:20px">
                            <div>项目时长:</div>
                            <input class="easyui-textbox" id="shichang1" name="shichang1"value="" disabled>
                        </div>

                        <div style="margin-bottom:20px">
                            <div>税费:</div>
                            <input class="easyui-textbox" id="shuifei1"name="shuifei1" value="" disabled>
                        </div>
                        <div style="margin-bottom:20px">
                            <div>房租:</div>
                            <input class="easyui-textbox" id="fangzu1" name="fangzu1"value="" disabled></div>
                        <div style="margin-bottom:20px">
                            <div>外包:</div>
                            <input class="easyui-textbox" id="waibao1" name="waibao1"value="" disabled>
                        </div>
                    </div>
                    <div style="position: absolute;left: 35%;top: 7%">

                        <div style="margin-bottom:20px">
                            <div>招待费:</div>
                            <input class="easyui-textbox" id="zhaodaifei00"name="zhaodaifei1"
                                   value="" disabled>
                        </div>

                        <div style="margin-bottom:20px">
                            <div>通讯费:</div>
                            <input class="easyui-textbox"
                                   id="tongxunfei1"name="tongxunfei1"
                                   value="" disabled></div>

                        <div style="margin-bottom:20px">
                            <div>日用品:</div>
                            <input class="easyui-textbox"
                                   id="riyongpin1"name="riyongpin1"
                                   value="" disabled></div>

                        <div style="margin-bottom:20px">
                            <div>邮寄费:</div>
                            <input class="easyui-textbox" id="youjifei1"name="youjifei1" value="" disabled></div>
                        <div style="margin-bottom:20px">
                            <div>租车费:</div>
                            <input class="easyui-textbox"
                                   id="zuchefei1"name="zuchefei1"
                                   value="" disabled></div>
                        <div style="margin-bottom:20px">
                            <div>设备修理费:</div>
                            <input class="easyui-textbox"
                                   id="shebeixiuli1"name="shebeixiuli1"
                                   value="" disabled></div>
                    </div>
                    <div style="position: absolute;left: 70%;top: 7%">
                        <div style="margin-bottom:20px">
                            <div>高速通行费:</div>
                            <input class="easyui-textbox"
                                   id="gaosutongxing1" name="gaosutongxing1"
                                   value="" disabled></div>

                        <div style="margin-bottom:20px">
                            <div>出差加油费:</div>
                            <input class="easyui-textbox"
                                   id="chuchaijiayou1" name="chuchaijiayou1"
                                   value="" disabled></div>
                        <div style="margin-bottom:20px">
                            <div>市内公交出租费:</div>
                            <input class="easyui-textbox"
                                   id="shineigongjiao1" name="shineigongjiao1"
                                   value="" disabled></div>
                        <div style="margin-bottom:20px">
                            <div>(修/洗)车费:</div>
                            <input class="easyui-textbox"
                                   id="xiuchefei1" name="xiuchefei1"
                                   value="" disabled> </div>

                        <div style="margin-bottom:20px">
                            <div>人工费:</div>
                            <input class="easyui-textbox"
                                   id="rengong1" name="rengong1"
                                   value="" disabled></div>

                        <div style="margin-bottom:20px">
                            <div>水电费:</div>
                            <input class="easyui-textbox"
                                   id="shuidian1" name="shuidian1"
                                   value="" disabled></div>
                        <div style="margin-bottom:20px">
                            <div>(火/汽)车/飞机票:</div>
                            <input
                                    class="easyui-textbox" id="chepiao1" value=""  name="chepiao1" disabled></div>
                    </div>
                    <div>

                    </div>
                </form>


            </div>
            <table id="dg3" class="easyui-datagrid" title="预算信息" style="width:100%;height:30%"
                   data-options="
              region:'north',
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
              collapsible:true">
                <tbody id="show_tbody14">
                <c:forEach items="${yulist}" var="yulist">
                    <c:if test="${xiangmuname!=null}">
                        <tr>
                            <td>${yulist.shichang}</td>
                            <td></td>
                            <td>${yulist.xiangmuname}</td>
                            <c:if test="${yulist.bid==1}">
                                <td>一中队</td>
                            </c:if>

                            <c:if test="${yulist.bid==2}">
                                <td>二中队</td>
                            </c:if>

                            <c:if test="${yulist.bid==3}">
                                <td>三中队</td>
                            </c:if>

                            <c:if test="${yulist.bid==4}">
                                <td>四中队</td>
                            </c:if>

                            <c:if test="${yulist.bid==5}">
                                <td>五中队</td>
                            </c:if>

                            <c:if test="${yulist.bid==6}">
                                <td>内业</td>
                            </c:if>

                            <c:if test="${yulist.bid==7}">
                                <td>管理</td>
                            </c:if>
                            <td>${yulist.renshu}</td>
                            <td>${yulist.gongzi}</td>
                            <td>${yulist.shuifei}</td>
                            <td>${yulist.fangzu}</td>
                            <td>${yulist.waibao}</td>
                            <td>${yulist.zhaodaifei}</td>
                            <td>${yulist.tongxunfei}</td>
                            <td>${yulist.riyongpin}</td>
                            <td>${yulist.youjifei}</td>
                            <td>${yulist.zuchefei}</td>
                            <td>${yulist.shebeixiuli}</td>
                            <td>${yulist.gaosutongxing}</td>
                            <td>${yulist.chuchaijiayou}</td>
                            <td>${yulist.shineigongjiao}</td>
                            <td>${yulist.xiuchefei}</td>
                            <td>${yulist.rengong}</td>
                            <td>${yulist.shuidian}</td>
                            <td>${yulist.chepiao}</td>
                            <td>${yulist.qita}</td>
                            <td>
                                <fmt:formatNumber value='${yulist.jieguo}' pattern='#,#00.00#'></fmt:formatNumber>
                            </td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>


            <table id="dg2" class="easyui-datagrid" title="对比信息" style="width:100%;height:30%"
                   data-options="
                region:'center',
                rownumbers:true,
                singleSelect:true,
                autoRowHeight:false,
                pagination:true,
                pageSize:10,
                collapsible:true">

                <tbody id="show_tbody12">
                <c:if test="${xiangmuname!=null}">
                    <tr>
              <%--          <td>${renshu}</td>--%>
                        <td>${gongzi}</td>
                        <%--<td>${shichang}</td>--%>
                        <td>${shuifei}</td>
                        <td>${fangzu}</td>
                        <td>${waibao}</td>
                        <td>
                            <fmt:formatNumber value='${zhaodaifei}' pattern='#,#00.00#'></fmt:formatNumber>
                        </td>
                        <td>${tongxunfei}</td>
                        <td>${riyongpin}</td>
                        <td>${youjifei}</td>
                        <td>${zuchefei}</td>
                        <td>${shebeixiuli}</td>
                        <td>${gaosutongxing}</td>
                        <td>${chuchaijiayou}</td>
                        <td>${shineigongjiao}</td>
                        <td>${xiuchefei}</td>
                        <td>${rengong}</td>
                        <td>${shuidian}</td>
                        <td>${chepiao}</td>
                        <td>${qita}</td>
                        <td>
                            <fmt:formatNumber value='${jieguo}' pattern='#,#00.00#'></fmt:formatNumber>
                        </td>
                    </tr>
                </c:if>
                </tbody>
            </table>

        </div>
    </div>
</div>
<script src="/static/js/daochu.js"></script>
<script src="/static/js/fenye.js"></script>
</body>
</html>