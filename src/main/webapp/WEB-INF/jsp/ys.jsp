<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="container content_width">
            <div class="person_search">
                <div class="search_input">
                    <div class="input-group mb-3">
                        <span>名称：</span>
                        <input id="Ktext" type="text" class="form-control" placeholder="请输入项目名称">
                    </div>
                </div>
                <div class="search_input">
                    <div class="input-group mb-3">
                        <span>请选择中队：</span>
                      <%--  <input id="job_num" type="text" class="form-control" placeholder="请输入工号">--%>
                        <select class="form-control" id="job_num">
                            <option value="0">--请选择--</option>
                            <option value="一中队">一中队</option>
                            <option value="二中队">二中队</option>
                            <option value="三中队">三中队</option>
                        </select>
                    </div>
                </div>
                <div class="search_input">
                    <button class="btn btn-primary search_btn" type="button" id="search_btn">查询</button>
                </div>
            </div>
            <div class="line"></div>
        </div>
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
        <table id="tb" class="table">
            <thead>
            <tr>
                <th>项目名称</th>
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
            <tbody id="show_tbody">
            <tr>
                <td>刘晓晓</td>
                <td>7652101</td>
                <td>18086667777</td>
                <td>------</td>
                <td>一级</td>
                <td>高级</td>
                <td>
                    <a href="#" class="edit">编辑</a>
                    <a href="#" class="del">删除</a>
                </td>
            </tr>
            <tr>
                <td>李磊</td>
                <td>7652102</td>
                <td>18086668888</td>
                <td>------</td>
                <td>三级</td>
                <td>专家</td>
                <td>
                    <a href="#" class="edit">编辑</a>
                    <a href="#" class="del">删除</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
