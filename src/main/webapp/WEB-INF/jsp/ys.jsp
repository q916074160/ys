<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <script type="text/javascript" src="/static/easyUi/jquery.min.js"></script>
    <script src="/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/js/bootbox.min.js"></script>
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
</head>

<body>
<div class="box,easyui-layout">
    <div class="title">项目查询</div>
    <div class="content,easyui-layout" data-options="region:'center'" style="height: 100%" >
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
                <div class="search_input" >
                    <div class="input-group mb-3">
                        <span>请选择中队：</span>
                      <%--  <input id="job_num" type="text" class="form-control" placeholder="请输入工号">--%>
                        <select class="form-control" id="job_num" name="bid" id="bid" >
                            <option value="">--请选择--</option>
                            <c:forEach items="${bumenList}" var="bumenList">
                            <option value="${bumenList.bid}">${bumenList.bname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="search_input">
                    <button class="btn btn-primary search_btn" type="button" id="search_btn"  onclick="showqueryBill()">查询</button>
                </div>

                <div class="search_input">
                    <c:if test="${list!=null}">
                       <button class="btn btn-primary search_btn" type="button" id="dc_btn">导出</button>
                    </c:if>
                </div>
                <tr>
                <td>对比结果:</td>
                <c:if test="${xiangmuname!=null}">


                <td><input type="text" name="gongzi" id="gongzi"  readonly= "true" style="border:0px red solid; outline:none; " value="${jiguo}"></input></td>
                </tr>
                </c:if>
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
            <tr>
                <th field="xiangmuname" width="80">名称</th>
                <th field="renshu" width="100">人数</th>
                <th field="gongzi" width="80">工资</th>
                <th field="shichang" width="80" align="right">项目时长</th>
                <th field="shuifei" width="80" align="right">税</th>
                <th field="fangzu" width="100" align="right">房租</th>
                <th field="waibao" width="110">外包</th>
                <th field="zhaodaifei" width="80">招待</th>
                <th field="tongxunfei" width="100">通讯</th>
                <th field="riyongpin" width="80">日用品</th>
                <th field="youjifei" width="80" align="right">邮寄</th>
                <th field="zuchefei" width="80" align="right">租车</th>
                <th field="shebeixiuli" width="100" align="right">修理</th>
                <th field="gaosutongxing" width="110">通行</th>
                <th field="chuchaijiayou" width="80">出差加油</th>
                <th field="shineigongjiao" width="100">公交出租</th>
                <th field="xiuchefei" width="80">修洗车</th>
                <th field="rengong" width="80" align="right">人工</th>
                <th field="shuidian" width="80" align="right">水电</th>
                <th field="chepiao" width="100" align="right">车票</th>
                <th field="zhaodaifei" width="110">总和</th>
                <th field="kaishitime" width="110">开始时间</th>
            </tr>
            </thead>

            <tbody id="show_tbody1">
            <c:forEach items="${list}" var="list">
            <c:if test="${xiangmuname!=null}">
            <tr>
            <td>${list.xiangmuname}</td>
            <td>${list.renshu}</td>
            <td>${list.gongzi}</td>
            <td>${list.shichang}</td>
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
            <td>${list.jieguo}</td>
            <td>
            <fmt:formatDate pattern="yyyy-MM-dd" value="${list.kaishitime}"></fmt:formatDate>
            </td>

            </tr>
            </c:if>
            </c:forEach>
            </tbody>


        </table>


        <table id="dg2" class="easyui-datagrid" title="实算总和信息" style="width:100%;height:30%"
               data-options="
               region:'center',
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
              collapsible:true">
            <thead>
            <tr>
                <th data-options="field:'xiangmuname',width:80">名称</th>
                <th data-options="field:'renshu',width:100">人数</th>
                <th data-options="field:'gongzi',width:80,align:'right'">工资</th>
                <th data-options="field:'shichang',width:80,align:'right'">项目时长</th>
                <th data-options="field:'shuifei',width:250">税</th>
                <th data-options="field:'fangzu',width:60,align:'center'">房租</th>
                <th data-options="field:'waibao',width:80">外包</th>
                <th data-options="field:'zhaodaifei',width:100">招待</th>
                <th data-options="field:'tongxunfei',width:80,align:'right'">通讯</th>
                <th data-options="field:'riyongpin',width:80,align:'right'">日用品</th>
                <th data-options="field:'youjifei',width:250">邮寄</th>
                <th data-options="field:'zuchefei',width:60,align:'center'">租车</th>
                <th data-options="field:'shebeixiuli',width:80">修理</th>
                <th data-options="field:'gaosutongxing',width:100">通行</th>
                <th data-options="field:'chuchaijiayou',width:80,align:'right'">出差加油</th>
                <th data-options="field:'shineigongjiao',width:80,align:'right'">公交出租</th>
                <th data-options="field:'xiuchefei',width:250">修洗车</th>
                <th data-options="field:'rengong',width:60,align:'center'">人工</th>
                <th data-options="field:'shuidian',width:80">水电</th>
                <th data-options="field:'chepiao',width:100">车票</th>
                <th data-options="field:'zhaodaifei',width:80,align:'right'">总和</th>
                <th data-options="field:'kaishitime',width:80,align:'right'">开始时间</th>
            </tr>
            </thead>

            <tbody id="show_tbody12">

            <c:forEach items="${sumShiSuan}" var="sumShiSuan">

                <c:if test="${xiangmuname!=null}">
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
                        <td>${sumShiSuan.jieguo}</td>
                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${sumShiSuan.kaishitime}"></fmt:formatDate></td>
                    </tr>
                </c:if>

            </c:forEach>
            </tbody>


        </table>


        <table id="dg3" class="easyui-datagrid" title="预算信息" style="width:100%;height:30%"
               data-options="
              region:'north',
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
              collapsible:true">
            <thead>
            <tr>
                <th data-options="field:'xiangmuname',width:80">名称</th>
                <th data-options="field:'renshu',width:100">人数</th>
                <th data-options="field:'gongzi',width:80,align:'right'">工资</th>
                <th data-options="field:'shichang',width:80,align:'right'">项目时长</th>
                <th data-options="field:'shuifei',width:250">税</th>
                <th data-options="field:'fangzu',width:60,align:'center'">房租</th>
                <th data-options="field:'waibao',width:80">外包</th>
                <th data-options="field:'zhaodaifei',width:100">招待</th>
                <th data-options="field:'tongxunfei',width:80,align:'right'">通讯</th>
                <th data-options="field:'riyongpin',width:80,align:'right'">日用品</th>
                <th data-options="field:'youjifei',width:250">邮寄</th>
                <th data-options="field:'zuchefei',width:60,align:'center'">租车</th>
                <th data-options="field:'shebeixiuli',width:80">修理</th>
                <th data-options="field:'gaosutongxing',width:100">通行</th>
                <th data-options="field:'chuchaijiayou',width:80,align:'right'">出差加油</th>
                <th data-options="field:'shineigongjiao',width:80,align:'right'">公交出租</th>
                <th data-options="field:'xiuchefei',width:250">修洗车</th>
                <th data-options="field:'rengong',width:60,align:'center'">人工</th>
                <th data-options="field:'shuidian',width:80">水电</th>
                <th data-options="field:'chepiao',width:100">车票</th>
                <th data-options="field:'zhaodaifei',width:80,align:'right'">总和</th>
            </tr>
            </thead>

            <tbody id="show_tbody14">
            <c:forEach items="${yulist}" var="yulist">
                <c:if test="${xiangmuname!=null}">
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
                        <td>${yulist.jieguo}</td>
                    </tr>
                </c:if>

            </c:forEach>
            </tbody>
        </table>


</div>
        <script>





            function pagerFilter(data){
                if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
                    data = {
                        total: data.length,
                        rows: data
                    }
                }


                var dg1 = $(this);
                var opts = dg1.datagrid('options');
                var pager = dg1.datagrid('getPager');

                pager.pagination({
                    displayMsg:'当前显示从第{from}条到{to}条 共{total}条记录',
                    onSelectPage:function(pageNum, pageSize){
                        opts.pageNumber = pageNum;
                        opts.pageSize = pageSize;
                        pager.pagination('refresh',{
                            pageNumber:pageNum,
                            pageSize:pageSize
                        });
                        dg1.datagrid('loadData',data);
                    }
                });
                if (!data.originalRows){
                    data.originalRows = (data.rows);
                }
                var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
                var end = start + parseInt(opts.pageSize);
                data.rows = (data.originalRows.slice(start, end));
                return data;
            }

            $(function(){
                $('#dg1').datagrid({loadFilter:pagerFilter}).datagrid('loadData', getData());
            });
        </script>
    </div>
</div>

<script src="/static/js/daochu.js"></script>

</body>
</html>