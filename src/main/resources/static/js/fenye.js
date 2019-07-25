


// function pagerFilter(data){
//     if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//
//
//     var dg1 = $(this);
//     var opts = dg1.datagrid('options');
//     var pager = dg1.datagrid('getPager');
//
//     pager.pagination({
//         displayMsg:'当前显示从第{from}条到{to}条 共{total}条记录',
//         onSelectPage:function(pageNum, pageSize){
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh',{
//                 pageNumber:pageNum,
//                 pageSize:pageSize
//             });
//             dg1.datagrid('loadData',data);
//         }
//     });
//     if (!data.originalRows){
//         data.originalRows = (data.rows);
//     }
//     var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
//     var end = start + parseInt(opts.pageSize);
//     data.rows = (data.originalRows.slice(start, end));
//     return data;
// }
//
// $(function(){
//     $('#dg1').datagrid({loadFilter:pagerFilter}).datagrid('loadData');
// });


$(function(){
    //创建data_grid
    $("#dg1").datagrid({

        url:'querySs', //数据来源
        //冻结列

        //列的定义
        columns:[[
            {field:'shiid',title:'id',width:50},
            {field:'time',title:'所属时间',width:80},
            {field:'xiangmuname',title:'名称',width:50},
            {field:'renshu',title:'人数',width:50},
            {field:'gongzi',title:'工资',width:50},
            {field:'shichang',title:'项目时长',width:50},
            {field:'shuifei',title:'税',width:50},
            {field:'fangzu',title:'房租',width:50},
            {field:'waibao',title:'外包',width:50},
            {field:'zhaodaifei',title:'招待',width:50},
            {field:'tongxunfei',title:'通讯',width:50},
            {field:'riyongpin',title:'日用品',width:50},
            {field:'youjifei',title:'邮寄',width:50},
            {field:'zuchefei',title:'租车',width:50},
            {field:'shebeixiuli',title:'修理',width:50},
            {field:'gaosutongxing',title:'通行',width:50},
            {field:'chuchaijiayou',title:'出差加油',width:50},
            {field:'shineigongjiao',title:'公交出租',width:50},
            {field:'xiuchefei',title:'修洗车',width:50},
            {field:'rengong',title:'人工',width:50},
            {field:'shuidian',title:'水电',width:50},
            {field:'chepiao',title:'车票',width:50},
            {field:'jieguo',title:'总和',width:50}
        ]],

        fitColumns:true,//列自适应宽度，不能和冻结列同时设置为true
        striped:true,//斑马线效果
        idField:'sno',//主键列
        rownumbers:true,//显示行号
        singleSelect:false,//是否单选
        pagination:true,//显示分页栏
        pageList:[10,20,50,100],//每页行数选择列表
        pageSize:10,//出事每页行数
        remoteSort:true//是否服务器端排序，设成false，才能客户端排序
        // sortName:'sclass'//设置排序列


    });
})


$(function(){
    //创建data_grid
    $("#dg2").datagrid({

        url:'querySs', //数据来源
        //冻结列

        //列的定义
        columns:[[


            {field:'renshu',title:'人数',width:50},
            {field:'gongzi',title:'工资',width:50},
            {field:'shichang',title:'项目时长',width:50},
            {field:'shuifei',title:'税',width:50},
            {field:'fangzu',title:'房租',width:50},
            {field:'waibao',title:'外包',width:50},
            {field:'zhaodaifei',title:'招待',width:50},
            {field:'tongxunfei',title:'通讯',width:50},
            {field:'riyongpin',title:'日用品',width:50},
            {field:'youjifei',title:'邮寄',width:50},
            {field:'zuchefei',title:'租车',width:50},
            {field:'shebeixiuli',title:'修理',width:50},
            {field:'gaosutongxing',title:'通行',width:50},
            {field:'chuchaijiayou',title:'出差加油',width:50},
            {field:'shineigongjiao',title:'公交出租',width:50},
            {field:'xiuchefei',title:'修洗车',width:50},
            {field:'rengong',title:'人工',width:50},
            {field:'shuidian',title:'水电',width:50},
            {field:'chepiao',title:'车票',width:50},
            {field:'jieguo',title:'总和',width:50}

        ]],

        fitColumns:true,//列自适应宽度，不能和冻结列同时设置为true
        striped:true,//斑马线效果
        idField:'sno',//主键列
        rownumbers:true,//显示行号
        singleSelect:false,//是否单选
        pagination:true,//显示分页栏
        pageList:[10,20,50,100],//每页行数选择列表
        pageSize:10,//出事每页行数
        remoteSort:true//是否服务器端排序，设成false，才能客户端排序
        // sortName:'sclass'//设置排序列


    });
})


$(function(){
    //创建data_grid
    $("#dg3").datagrid({

        url:'querySs', //数据来源
        //冻结列

        //列的定义
        columns:[[
            {field:'xiangmuname',title:'名称',width:50},
            {field:'renshu',title:'人数',width:50},
            {field:'gongzi',title:'工资',width:50},
            {field:'shichang',title:'项目时长',width:50},
            {field:'shuifei',title:'税',width:50},
            {field:'fangzu',title:'房租',width:50},
            {field:'waibao',title:'外包',width:50},
            {field:'zhaodaifei',title:'招待',width:50},
            {field:'tongxunfei',title:'通讯',width:50},
            {field:'riyongpin',title:'日用品',width:50},
            {field:'youjifei',title:'邮寄',width:50},
            {field:'zuchefei',title:'租车',width:50},
            {field:'shebeixiuli',title:'修理',width:50},
            {field:'gaosutongxing',title:'通行',width:50},
            {field:'chuchaijiayou',title:'出差加油',width:50},
            {field:'shineigongjiao',title:'公交出租',width:50},
            {field:'xiuchefei',title:'修洗车',width:50},
            {field:'rengong',title:'人工',width:50},
            {field:'shuidian',title:'水电',width:50},
            {field:'chepiao',title:'车票',width:50},
            {field:'jieguo',title:'总和',width:50}
        ]],

        fitColumns:true,//列自适应宽度，不能和冻结列同时设置为true
        striped:true,//斑马线效果
        idField:'sno',//主键列
        rownumbers:true,//显示行号
        singleSelect:false,//是否单选
        pagination:true,//显示分页栏
        pageList:[10,20,50,100],//每页行数选择列表
        pageSize:10,//出事每页行数
        remoteSort:true//是否服务器端排序，设成false，才能客户端排序
        // sortName:'sclass'//设置排序列


    });
})




// function pagerFilter2(data){
//     if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//
//     var dg2 = $(this);
//     var opts = dg2.datagrid('options');
//     var pager = dg2.datagrid('getPager');
//
//     pager.pagination({
//         displayMsg:'当前显示从第{from}条到{to}条 共{total}条记录',
//         onSelectPage:function(pageNum, pageSize){
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh',{
//                 pageNumber:pageNum,
//                 pageSize:pageSize
//             });
//             dg1.datagrid('loadData',data);
//         }
//     });
//     if (!data.originalRows){
//         data.originalRows = (data.rows);
//     }
//     var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
//     var end = start + parseInt(opts.pageSize);
//     data.rows = (data.originalRows.slice(start, end));
//     return data;
// }
//
// $(function(){
//     $('#dg2').datagrid({loadFilter:pagerFilter2}).datagrid('loadData');
// });
//
//
//
//
//
// function pagerFilter3(data){
//     if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//
//     var dg3 = $(this);
//     var opts = dg3.datagrid('options');
//     var pager = dg3.datagrid('getPager');
//
//     pager.pagination({
//         displayMsg:'当前显示从第{from}条到{to}条 共{total}条记录',
//         onSelectPage:function(pageNum, pageSize){
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh',{
//                 pageNumber:pageNum,
//                 pageSize:pageSize
//             });
//             dg1.datagrid('loadData',data);
//         }
//     });
//     if (!data.originalRows){
//         data.originalRows = (data.rows);
//     }
//     var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
//     var end = start + parseInt(opts.pageSize);
//     data.rows = (data.originalRows.slice(start, end));
//     return data;
// }
//
// $(function(){
//     $('#dg3').datagrid({loadFilter:pagerFilter3}).datagrid('loadData');
// });