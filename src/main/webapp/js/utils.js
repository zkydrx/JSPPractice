//格式化日期的工具
Date.prototype.format = function(format){
    var o = {
        "M+" : this.getMonth()+1, //month
        "d+" : this.getDate(),    //day
        "h+" : this.getHours(),   //hour
        "m+" : this.getMinutes(), //minute
        "s+" : this.getSeconds(), //second
        "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
        "S" : this.getMilliseconds() //millisecond
    }
    if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
        (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)if(new RegExp("("+ k +")").test(format))
        format = format.replace(RegExp.$1,
            RegExp.$1.length==1 ? o[k] :
                ("00"+ o[k]).substr((""+ o[k]).length));
    return format;
};

/**
 * check font util.
 * @param vobj1
 * @param vmax
 */
function checkCountFonts(vobj1, vmax)
{
    var str = vobj1.value;
    var strlen = str.length;
    if (strlen > vmax)
    {
        alert('字数超过限制，请输入不超过' + vmax + '个字');
        eval_r(vobj1.value = str.substr(0, vmax));
    }
}



