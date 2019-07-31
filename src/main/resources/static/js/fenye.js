



$(function(){
    //创建data_grid
    $("#dg1").datagrid({
        url:'querySs', //数据来源
        //冻结列

        //列的定义
        columns:[[
            {field:'shiid',title:'shiid',width:50, hidden: true},
            {field:'time',title:'所属时间',width:80},
            {field:'xiangmuname',title:'名称',width:50},
            {field:'bid',title:'中队',width:50},
            {field:'renshu',title:'人数',width:50},
            {field:'gongzi',title:'工资',width:50},
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
            {field:'qita',title:'其他',width:50},
            {field:'jieguo',title:'总和',width:50}
        ]],


        fitColumns:true,//列自适应宽度，不能和冻结列同时设置为true
        striped:true,//斑马线效果
        // idField:'shiid',//主键列
        rownumbers:true,//显示行号
        singleSelect:true,//是否单选
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
            {field:'shichang',title:'项目时长',width:50},
            {field:'shiid',title:'shiid',width:50, hidden: true},
            {field:'xiangmuname',title:'名称',width:50},
            {field:'bid',title:'中队',width:50},
            {field:'renshu',title:'人数',width:50},
            {field:'gongzi',title:'工资',width:50},
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
            {field:'qita',title:'其他',width:50},
            {field:'jieguo',title:'总和',width:50}
        ]],

        fitColumns:true,//列自适应宽度，不能和冻结列同时设置为true
        striped:true,//斑马线效果
        // idField:'sno',//主键列
        rownumbers:true,//显示行号
        singleSelect:true,//是否单选
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
            {field:'xiangmuname',title:'名称',width:50},
            {field:'renshu',title:'人数',width:50},
            {field:'gongzi',title:'工资',width:50},
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
            {field:'qita',title:'其他',width:50},
            {field:'jieguo',title:'总和',width:50}
        ]],

        fitColumns:true,//列自适应宽度，不能和冻结列同时设置为true
        striped:true,//斑马线效果
        // idField:'sno',//主键列
        rownumbers:true,//显示行号
        singleSelect:true,//是否单选
        pagination:false,//显示分页栏
        pageList:[10,20,50,100],//每页行数选择列表
        pageSize:10,//出事每页行数
        remoteSort:true//是否服务器端排序，设成false，才能客户端排序
        // sortName:'sclass'//设置排序列


    });
})


