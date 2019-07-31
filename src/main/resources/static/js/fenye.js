



// //计算分页
// $('#dg1 ').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', data.Body);
// function pagerFilter(data) {
//     if (typeof data.length == 'number' && typeof data.splice == 'function') {
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//     var dg = $(this);
//     var opts = dg.datagrid('options');
//     var pager = dg.datagrid('getPager');
//     pager.pagination({
//         onSelectPage: function (pageNum, pageSize) {
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh', {
//                 pageNumber: pageNum,
//                 pageSize: pageSize
//             });
//             dg.datagrid('loadData', data);
//         }
//     });
//     if (!data.originalRows) {
//         data.originalRows = (data.rows);
//     }
//     var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
//     var end = start + parseInt(opts.pageSize);
//     data.rows = (data.originalRows.slice(start, end));
//
//     return data;
//
// }

//计算分页
$('#dg1 ').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', data.Body);
function pagerFilter(data) {
    if (typeof data.length == 'number' && typeof data.splice == 'function') {
        data = {
            total: data.length,
            rows: data
        }
    }
    var dg = $(this);
    var opts = dg.datagrid('options');
    var pager = dg.datagrid('getPager');
    pager.pagination({
        onSelectPage: function (pageNum, pageSize) {
            opts.pageNumber = pageNum;
            opts.pageSize = pageSize;
            pager.pagination('refresh', {
                pageNumber: pageNum,
                pageSize: pageSize
            });
            dg.datagrid('loadData', data);
        }
    });
    if (!data.originalRows) {
        data.originalRows = (data.rows);
    }
    var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
    var end = start + parseInt(opts.pageSize);
    data.rows = (data.originalRows.slice(start,end));
    return data;
}


// function pagerFilter(data) {
//     if(typeof data.length == 'number' && typeof data.splice == 'function') { // is array
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//     var dg = $(this);
//     var opts = dg.datagrid('options');
//     var pager = dg.datagrid('getPager');
//     pager.pagination({
//         onSelectPage: function(pageNum, pageSize) {
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh', {
//                 pageNumber: pageNum,
//                 pageSize: pageSize
//             });
//             dg.datagrid('loadData', data);
//         }
//     });
//     if(!data.originalRows) {
//         data.originalRows = (data.rows);
//     }
//     var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
//     var end = start + parseInt(opts.pageSize);
//     data.rows = (data.originalRows.slice(start, end));
//     return data;
// };
// $(function(){
//     var orgInfo=[];
//     $('#dg1').datagrid({loadFilter:pagerFilter}).datagrid('loadData');
//     // $('#dg3').datagrid({loadFilter:pagerFilter}).datagrid('loadData');
//
//
//     $('#dg3').datagrid({
//         loadFilter: pagerFilter//在load数据的时候使用分页函数；
//     }).datagrid('loadData',orgInfo);
//
//
// });
// getMediaInfo();
// $(function(){
//
//
//             $('#dg1').datagrid({
//                 loadFilter: pagerFilter//在load数据的时候使用分页函数；
//             }).datagrid('loadData');
//
//
// })

// function pagerFilter(data){
//     if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//     var dg = $(this);
//     var opts = dg.datagrid('options');
//     var pager = dg.datagrid('getPager');
//     pager.pagination({
//         onSelectPage:function(pageNum, pageSize){
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh',{
//                 pageNumber:pageNum,
//                 pageSize:pageSize
//             });
//             dg.datagrid('loadData',data);
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
//
// $(function(){
//     $('#dg1').datagrid({loadFilter:pagerFilter}).datagrid('loadData');
//     $('#dg3').datagrid({loadFilter:pagerFilter}).datagrid('loadData');
//
// });



// function pagerFilter1(data){
//     if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
//         data = {
//             total: data.length,
//             rows: data
//         }
//     }
//     var dg = $(this);
//     var opts = dg.datagrid('options');
//     var pager = dg.datagrid('getPager');
//     pager.pagination({
//         onSelectPage:function(pageNum, pageSize){
//             opts.pageNumber = pageNum;
//             opts.pageSize = pageSize;
//             pager.pagination('refresh',{
//                 pageNumber:pageNum,
//                 pageSize:pageSize
//             });
//             dg.datagrid('loadData',data);
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
//     $('#dg2').datagrid({loadFilter:pagerFilter1}).datagrid('loadData',getData());
// });




//




