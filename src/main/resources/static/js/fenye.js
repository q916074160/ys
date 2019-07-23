

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







function pagerFilter2(data){
    if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
        data = {
            total: data.length,
            rows: data
        }
    }

    var dg2 = $(this);
    var opts = dg2.datagrid('options');
    var pager = dg2.datagrid('getPager');

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
    $('#dg2').datagrid({loadFilter:pagerFilter2}).datagrid('loadData', getData());
});





function pagerFilter3(data){
    if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
        data = {
            total: data.length,
            rows: data
        }
    }

    var dg3 = $(this);
    var opts = dg3.datagrid('options');
    var pager = dg3.datagrid('getPager');

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
    $('#dg3').datagrid({loadFilter:pagerFilter3}).datagrid('loadData', getData());
});