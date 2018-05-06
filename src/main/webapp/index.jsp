<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<h2>Hello World!</h2>

<style type="text/css">
    tr.focus{
        background-color: #ee2d1f;
    }

</style>


<script type="text/javascript" src=<"http://code.jquery.com/jquery-latest.js">
    // $(document).ready(function () {
    //     $("#tUsers>tbody>tr").on("click", function () {
    //         $(this).parent().find("tr.focus").toggleClass("focus");//取消原先选中行
    //         $(this).toggleClass("focus");//设定当前行为选中行
    //     });
    // });
    //
    //
    // function SetCheckBox_Check(TableID) {
    //     var $TableID = tUsers == "" ? "#tb_List" : "#" + TableID + "";
    //     //循环每个tr行，添加click事件
    //     $($TableID).find("tr").live("click", function () {
    //         //标题行不作任何操作
    //         if (this.rowIndex == 0) return;
    //         if ($(this).find("input").attr("checked") == 'checked') {
    //             //已选中的行取消选中
    //             $(this).find("input").attr("checked", false);
    //         } else {
    //             //未选中的行，进行选中
    //             $(this).find("input").attr("checked", true);
    //         }
    //     });
    // }

    function getrow(obj){
        if(event.srcElement.tagName=="TD"){
            curRow=event.srcElement.parentElement;
            curRow.style.background="yellow";
        }
    }
    function backrow(obj){
        if(event.srcElement.tagName=="TD"){
            curRow=event.srcElement.parentElement;
            curRow.style.background="#f2f2f2";
        }
    }
    function selectRow(obj){
        if(event.srcElement.tagName=="TD"){
            curRow=event.srcElement.parentElement;
            curRow.style.background="blue";
            alert("这是第"+(curRow.rowIndex+1)+"行");
        }
    }

</script>
<div id="testDiv" style="width: 60%;margin-left: 10%;margin-top: 50px;height: 1100px;background-color: #f2f2f2;padding: 60px 10px 10px 200px;">
    <table width="100%" height="100px" border="1px"  id="tad" onmouseover="getrow(this)" onmouseout="backrow(this)" onclick="selectRow(this)">
        <tr><td>1</td><td>1</td></tr>
        <tr><td>3</td><td>1</td></tr>
        <tr><td>5</td><td>1</td></tr>
    </table>
    <input type="button" onclick="b()" value="add">
    <input type="button" onclick="c()" value="delRow">
    <input type="button" onclick="d()" value="delCol">
</div>
</body>
</html>
