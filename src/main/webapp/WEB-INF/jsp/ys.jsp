<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <script type="text/javascript" src="../easyUi/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/bootbox.min.js"></script>

</head>
<body><div class="box">
    <div class="title">项目查询</div>
    <div class="content">
        <!--搜索输入框及查询、重置按钮-->
    <form method="get" action="querySs">
        <div class="container content_width">
            <div class="person_search">
                <div class="search_input">
                    <div class="input-group mb-3">
                        <span>名称：</span>
                        <input id="Ktext" type="text" class="form-control" placeholder="请输入项目名称" name="xiangmuname">
                    </div>
                </div>
                <div class="search_input" >
                    <div class="input-group mb-3">
                        <span>请选择中队：</span>
                      <%--  <input id="job_num" type="text" class="form-control" placeholder="请输入工号">--%>
                        <select class="form-control" id="job_num" name="bid" >
                            <option value="">--请选择--</option>
                            <c:forEach items="${bumenList}" var="bumenList">
                            <option value="${bumenList.bid}">${bumenList.bname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="search_input">
                    <button class="btn btn-primary search_btn" type="submit" id="search_btn">查询</button>
                </div>
                <div class="search_input">
                    <a href="excel/export?list=${list}"><button class="btn btn-primary search_btn" type="button" id="dc_btn">导出</button></a>

                </div>
            </div>
            <div class="line"></div>
        </div>
</form>
        <!--添加按钮及bootstrap的模态框-->
        <div class="export">
            <button id="new_add" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#renyuan">
                <img src="img/add_two.png">
            </button>
            <div class="modal fade" id="renyuan">
                <div class="modal-dialog modal-lg modal_position">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                            <button id="add_btn" type="button" class="btn btn-secondary">确定</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--表格列表-->
        <%--<table id="tb" class="table">--%>
            <%--<thead>--%>
            <%--<tr>--%>
                <%--<th>名称</th>--%>
                <%--<th>人数</th>--%>
                <%--<th>工资</th>--%>
                <%--<th>项目时长</th>--%>
                <%--<th>税</th>--%>
                <%--<th>房租</th>--%>
                <%--<th>外包</th>--%>
                <%--<th>招待</th>--%>
                <%--<th>通讯</th>--%>
                <%--<th>日用品</th>--%>
                <%--<th>邮寄</th>--%>
                <%--<th>租车</th>--%>
                <%--<th>修理</th>--%>
                <%--<th>通行</th>--%>
                <%--<th>出差加油</th>--%>
                <%--<th>公交出租</th>--%>
                <%--<th>修洗车</th>--%>
                <%--<th>人工</th>--%>
                <%--<th>水电</th>--%>
                <%--<th>车票</th>--%>
                <%--<th>五险</th>--%>
                <%--<th>开始时间</th>--%>
            <%--</tr>--%>
            <%--</thead>--%>
            <%--<tbody id="show_tbody">--%>
            <%--<c:forEach items="${list}" var="list">--%>
            <%--<tr>--%>
                <%--<td>${list.xiangmuname}</td>--%>
                <%--<td>${list.renshu}</td>--%>
                <%--<td>${list.gongzi}</td>--%>
                <%--<td>${list.shichang}</td>--%>
                <%--<td>${list.shuifei}</td>--%>
                <%--<td>${list.fangzu}</td>--%>
                <%--<td>${list.waibao}</td>--%>
                <%--<td>${list.zhaodaifei}</td>--%>
                <%--<td>${list.tongxunfei}</td>--%>
                <%--<td>${list.riyongpin}</td>--%>
                <%--<td>${list.youjifei}</td>--%>
                <%--<td>${list.zuchefei}</td>--%>
                <%--<td>${list.shebeixiuli}</td>--%>
                <%--<td>${list.gaosutongxing}</td>--%>
                <%--<td>${list.chuchaijiayou}</td>--%>
                <%--<td>${list.shineigongjiao}</td>--%>
                <%--<td>${list.xiuchefei}</td>--%>
                <%--<td>${list.rengong}</td>--%>
                <%--<td>${list.shuidian}</td>--%>
                <%--<td>${list.chepiao}</td>--%>
                <%--<td>00</td>--%>
                <%--<td>--%>
                    <%--<fmt:formatDate pattern="yyyy-MM-dd" value="${list.kaishitime}"></fmt:formatDate>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--</c:forEach>--%>
            </tbody>
        </table>



        <table id="tb1" class="table">
            <thead>
            <tr>
                <th>名称</th>
                <th>人数</th>
                <th>工资</th>
                <th>项目时长</th>
                <th>税</th>
                <th>房租</th>
                <th>外包</th>
                <th>招待</th>
                <th>通讯</th>
                <th>日用品</th>
                <th>邮寄</th>
                <th>租车</th>
                <th>修理</th>
                <th>通行</th>
                <th>出差加油</th>
                <th>公交出租</th>
                <th>修洗车</th>
                <th>人工</th>
                <th>水电</th>
                <th>车票</th>
                <th>五险</th>
                <th>开始时间</th>
            </tr>
            </thead>
            <tbody id="show_tbody1">
            <c:forEach items="${yulist}" var="yulist">
                <tr>
                    <td>${yulist.xiangmuname}</td>
                    <td>${yulist.renshu}</td>
                    <td>${yulist.gongzi}</td>
                    <td>${yulist.shichang}</td>
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
                    <td>00</td>
                    <td>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <table id="tb2" class="table">
            <thead>
            <tr>
                <th>名称</th>
                <th>人数</th>
                <th>工资</th>
                <th>项目时长</th>
                <th>税</th>
                <th>房租</th>
                <th>外包</th>
                <th>招待</th>
                <th>通讯</th>
                <th>日用品</th>
                <th>邮寄</th>
                <th>租车</th>
                <th>修理</th>
                <th>通行</th>
                <th>出差加油</th>
                <th>公交出租</th>
                <th>修洗车</th>
                <th>人工</th>
                <th>水电</th>
                <th>车票</th>
                <th>五险</th>
                <th>开始时间</th>
            </tr>
            </thead>
            <tbody id="show_tbody12">
            <c:forEach items="${sumShiSuan}" var="sumShiSuan">

                <tr>
                    <td>${sumShiSuan.xiangmuname}</td>
                    <td>${sumShiSuan.renshu}</td>
                    <td>${sumShiSuan.gongzi}</td>
                    <td>${sumShiSuan.shichang}</td>
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

                    <td>00</td>
                    <td>           <fmt:formatDate pattern="yyyy-MM-dd" value="${sumShiSuan.time}"></fmt:formatDate></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</div>
</body>
</html>
