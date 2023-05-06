<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>${siteName!""}|积分管理-${title!""}</title>
<#include "../common/header.ftl"/>
<style>
td{
	vertical-align:middle;
}
</style>
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
      
      <!-- logo -->
      <div id="logo" class="sidebar-header">
        <a href="index.html"><img src="/admin/images/logo-sidebar.png" title="${siteName!""}" alt="${siteName!""}" /></a>
      </div>
      <div class="lyear-layout-sidebar-scroll"> 
        <#include "../common/left-menu.ftl"/>
      </div>
      
    </aside>
    <!--End 左侧导航-->
    
    <#include "../common/header-menu.ftl"/>
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-toolbar clearfix">
                <form class="pull-right search-bar" method="get" action="list" student="form">
                  <div class="input-group">
                    <div class="input-group-btn">
                      <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                          学生名称 <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu">
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="title">学生名称</a> </li>
                      </ul>
                    </div>
                    <input type="text" class="form-control" value="${name!""}" name="user.nickName" placeholder="请输入学生名称">
                  	<span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">搜索</button>
                    </span>
                  </div>
                </form>
                    <#include "../common/third-menu.ftl"/>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>
                          <label class="lyear-checkbox checkbox-primary">
                            <input type="checkbox" id="check-all"><span></span>
                          </label>
                        </th>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>积分</th>
                      </tr>
                    </thead>
                    <tbody>
                      <#if pageBean.content?size gt 0>
                      <#list pageBean.content as student>
                      <tr>
                        <td style="vertical-align:middle;">
                          <label class="lyear-checkbox checkbox-primary">
                            <input type="checkbox" name="ids[]" value="${student.id}"><span></span>
                          </label>
                        </td>
                          <td align="center">${student.studentSno!""}</td>
                          <td align="center">${student.user.nickName!""}</td>
                          <td align="center"><a  href="javascript:void(0)" onclick="show(${student.id})" >${student.studentCredits!""}</a></td>
                      </tr>
                    </#list>
                    <#else>
                    <tr align="center"><td colspan="5">这里空空如也！</td></tr>
					</#if>                      
                    </tbody>
                  </table>
                </div>
                <#if pageBean.total gt 0>
                <ul class="pagination">
                  <#if pageBean.currentPage == 1>
                  <li class="disabled"><span>«</span></li>
                  <#else>
                  <li><a href="list?name=${name!""}&currentPage=1">«</a></li>
                  </#if>
                  <#list pageBean.currentShowPage as showPage>
                  <#if pageBean.currentPage == showPage>
                  <li class="active"><span>${showPage}</span></li>
                  <#else>
                  <li><a href="list?name=${name!""}&currentPage=${showPage}">${showPage}</a></li>
                  </#if>
                  </#list>
                  <#if pageBean.currentPage == pageBean.totalPage>
                  <li class="disabled"><span>»</span></li>
                  <#else>
                  <li><a href="list?name=${name!""}&currentPage=${pageBean.totalPage}">»</a></li>
                  </#if>
                  <li><span>共${pageBean.totalPage}页,${pageBean.total}条数据</span></li>
                </ul>
                </#if>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>
<#--模态框-->
<!-- Large modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">日志详细</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="myModal">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-toolbar clearfix">
                                <a class="btn btn-primary m-r-5" href="javascript:void(0)" onclick="showModalTwo()"><i class="mdi mdi-account-edit"></i>积分操作</a>
                                <a class="btn btn-primary m-r-5" href="javascript:void(0)" onClick="del('/log/delete')"><i class="mdi mdi-account-remove"></i>删除</a>
                                </div>
                                <div class="card-body" id="card-body">

                                    <div class="table-responsive" >
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input type="checkbox" id="check-all"><span></span>
                                                    </label>
                                                </th>
                                                <th>学生学号</th>
                                                <th>学生名称</th>
                                                <th>时间</th>
                                                <th>积分操作</th>
                                                <th>备注</th>
                                                <input type="hidden" id="studentId" value="">
                                            </tr>
                                            </thead>
                                            <tbody id="data-logIntegral">

                                            </tbody>
                                        </table>
                                        <div  id="table-show">

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>



        </div>
    </div>
</div>
<#--第删除积分模态框-->

<!-- Large modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">增加</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"  id="myModalTwo">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header"><h4>添加日志</h4></div>
                        <div class="card-body">
                            <form action="add" id="student-add-form" method="post" class="row student-add-form">
                                <input type="hidden" name="student.id" value="" id="student_id" class="student_id">

                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">姓名</span>
                                    <input type="text" class="form-control required nickName" readonly="readonly" id="nickName" name="student.user.nickName" value="" placeholder="请输入昵称" tips="请填写昵称" />
                                </div>
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">学号</span>
                                    <input type="text" class="form-control studentSno" id="studentSno" name="student.studentSno" value=""  readonly="readonly" />
                                </div>
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">扣分</span>
                                    <input type="number" name="grade" class="form-control score" id="grade" value="" maxlength="5"  oninput="value=value.replace(/[^\d]/g,'')" >

                                </div>
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">原因</span>
                                    <input type="text" class="form-control cause" id="cause" name="cause" value="" />
                                </div>

                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <button type="button" class="btn btn-primary ajax-post" id="add-form-submit-btn" onclick="fromSubmit()">确 定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">返 回</button>
                    </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<#--第奖励积分模态框 -->
<!-- Large modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">增加</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myBonusPointsModalLabel"  id="myBonusPointsModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header"><h4>添加日志</h4></div>
                        <div class="card-body">
                            <form action="add" id="student-add-form1" method="post" class="row">
                                <input type="hidden" name="student.id" value="" id="student_id" class="student_id">

                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">姓名</span>
                                    <input type="text" class="form-control required nickName" readonly="readonly" id="nickName"    name="student.user.nickName" value="" placeholder="请输入昵称" tips="请填写昵称" />
                                </div>
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">学号</span>
                                    <input type="text" class="form-control studentSno" id="studentSno" name="student.studentSno" value=""  readonly="readonly" />
                                </div>
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">奖励积分</span>
                                    <input type="number" name="bonusPoints" class="form-control score" id="bonusPoints" value="" maxlength="3" max="100"  onblur="" oninput="value=value.replace(/[^\d]/g,'')" >

                                </div>
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">原因</span>
                                    <input type="text" class="form-control cause" id="cause" name="cause" value="" />
                                </div>

                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <button type="button" class="btn btn-primary ajax-post" id="add-form-submit-btn" onclick="fromSubmit1()">确 定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">返 回</button>
                    </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<#include "../common/footer.ftl"/>
<script type="text/javascript" src="/admin/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="/admin/js/main.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

});
function del(url){
	if($("input[type='checkbox']:checked").length != 1){
		showWarningMsg('请选择一条数据进行删除！');
		return;
	}
	var id = $("input[type='checkbox']:checked").val();
	$.confirm({
        title: '确定删除？',
        content: '删除后数据不可恢复，请慎重！',
        buttons: {
            confirm: {
                text: '确认',
                action: function(){
                    deleteReq(id,url);
                }
            },
            cancel: {
                text: '关闭',
                action: function(){
                    
                }
            }
        }
    });
}
//打开编辑页面
function edit(url){
	if($("input[type='checkbox']:checked").length != 1){
		showWarningMsg('请选择一条数据进行编辑！');
		return;
	}
	window.location.href = url + '?id=' + $("input[type='checkbox']:checked").val();
}
//调用删除方法
function deleteReq(id,url){
	$.ajax({
		url:url,
		type:'POST',
		data:{id:id},
		dataType:'json',
		success:function(data){
			if(data.code == 0){
				showSuccessMsg('删除成功!',function(){
					$("input[type='checkbox']:checked").parents("tr").remove();
				})
			}else{
				showErrorMsg(data.msg);
			}
		},
		error:function(data){
			alert('网络错误!');
		}
	});
}

/*关于模态框*/

function show(id,currentPage){
   // window.location.href = '/log/logs?student.id='+id;
    $('#myModal').modal({
        show:true
    })
    $.ajax({
        url:"/log/logs",
        type:'POST',
        data:{
            "student.id":id
        },
        dataType:'json',
        success:function(data){
            if(data.code == 0){
                //console.log(data)
                /*清空标签数据*/
                $("#data-logIntegral").text("");
                $("#table-show").text("");
                $("#card-body ul ").text("")

                /*展示数据*/
               var logIntegrals= data.data

               /*把选中学生的id存储在隐藏input中
               *
               * */
             $("#studentId").attr("studentid",id);

               if (logIntegrals.length<=0){
                   $("#table-show").append($("<h3>该学生暂无日志</h3>"))
               } else {
                for (var i = 0; i <logIntegrals.length ; i++) {
                      var $tr=$("<tr>");
                      var $td_id=$("<td style='vertical-align:middle;'></td>").append($("<label class='lyear-checkbox checkbox-primary'> </label>").append($("<input type='checkbox' name='ids[]' id='logIntegralId' value=''>").val(logIntegrals[i].id)).append($("<span></span>")));
                      var $td_studentSno=$("<td align='center'></td>").append(logIntegrals[i].student.studentSno);
                      var $td_nickName=$("<td align='center'></td>").append(logIntegrals[i].student.user.nickName);
                      var $td_createTime=$("<td align='center'></td>").append(changeDateFormat(logIntegrals[i].createTime));
                    var $td_grade;
                      if (logIntegrals[i].grade==0){
                          $td_grade=$("<td align='center'></td>").append("+"+logIntegrals[i].bonusPoints);
                      } else {
                          $td_grade=$("<td align='center'></td>").append("-"+logIntegrals[i].grade);
                      }
                      var $td_cause=$("<td align='center'></td>").append(logIntegrals[i].cause);
                    $tr.append($td_id).append($td_studentSno).append($td_nickName).append($td_createTime).append($td_grade).append($td_cause);
                    $("#data-logIntegral").append($tr);
                }
                    <#--<#list pageBean.currentShowPage as showPage>-->
                        <#--<#if pageBean.currentPage == showPage>-->
                  <#--<li class="active"><span>${showPage}</span></li>-->
                        <#--<#else>-->
                  <#--<li><a href="list?nickName=${nickName!""}&currentPage=${showPage}">${showPage}</a></li>-->
                        <#--</#if>-->
                    <#--</#list>-->
                //    /*分页*/
                //   var pageBean= data.data
                //   var $ul=$(" <ul class='pagination '>");
                //    for (var i = 0; i <pageBean.currentShowPage.length ; i++) {
                //       if (pageBean.currentPage==pageBean.currentShowPage[i]){
                //           $ul.append($("<li class=‘active’></li>").append($("<span></span>").text(pageBean.currentShowPage[i])))
                //       } else {
                //           $ul.append($("<li class=‘active’></li>").append($("<a></a>").on("click",show(id,pageBean.currentShowPage[i])).text(pageBean.currentShowPage[i])))
                //       }
                //    }
                // $("#card-body").append($ul);
               }
            }else{
                showErrorMsg(data.msg);
            }
        },
        error:function(data){
            alert('网络错误!');
        }
    });

}

/*关于弹出增加模态框
* 需要关闭前一个模态框
* 再进行展示
* */
function showModalTwo(){
    //关闭模态框
    $('#myModal').modal('toggle');
        $.confirm({
            title: '积分',
            content: '请选择操作',
            type: 'green',
            buttons: {
                confirm: {
                    text: '奖励积分',
                    action: function(){
                        $('#myBonusPointsModalLabel').modal({
                            show:true
                        });
                    }
                },
                cancel: {
                    text: '扣除积分',
                    action: function(){
                        /*根据学生的id查出该学生的数据*/
                        $('#myModalTwo').modal({
                            show:true
                        });
                    }
                },
                somethingElse: {
                    text: '取消',
                    action: function(){
                    }
                }
            }
        });
 $(".cause").val("");
 $(".score").val("");
    $.ajax({
        url:"/stu/get",
        type:'POST',
        data:{"id":$("#studentId").attr("studentid")},
        dataType:'json',
        success:function(data){
            if(data.code == 0){
                console.log(data)
                // 把学生的数据放进去方便from的提交
                var  student= data.data;
                 $(".studentSno").val(student.studentSno);
                $(".nickName").val(student.user.nickName);
                $(".student_id").val(student.id);
            }else{
                showErrorMsg(data.msg);
            }
        },
        error:function(data){
            alert('网络错误!');
        }
    });

}


/*监听提交按钮提交之后进行表单数据提交
* */

//提交按钮监听事件
function  fromSubmit(){
if ($("#grade").val()==null|| $("#grade").val()==0||$("#grade").val()==""){
    showErrorMsg("扣除积分不能为空");
    return;
    }
    if ($("#grade").val()>100){
        showErrorMsg("扣除分数不能大于100");
        return;
    }
    if(!checkForm("student-add-form")){
        return;
    }
    var data = $("#student-add-form").serialize();
    $.ajax({
        url:'add',
        type:'POST',
        data:data,
        dataType:'json',
        success:function(data){
            if(data.code == 0){
                showSuccessMsg('添加成功!',function(){
                    window.location.href = 'list';
                })
            }else{
                showErrorMsg(data.msg);
            }
        },
        error:function(data){
            alert('网络错误!');
        }
    });
}

//提交按钮监听事件
function  fromSubmit1(){
    if ($("#bonusPoints").val()==null|| $("#bonusPoints").val()==0||$("#bonusPoints").val()==""){
        showErrorMsg("奖励分数不能为空");
        return;
    }
    if ($("#bonusPoints").val()>100){
        showErrorMsg("奖励分数不能大于100");
        return;
    }
    if(!checkForm("student-add-form1")){
        return;
    }
    var data = $("#student-add-form1").serialize();
    $.ajax({
        url:'add',
        type:'POST',
        data:data,
        dataType:'json',
        success:function(data){
            if(data.code == 0){
                showSuccessMsg('添加成功!',function(){
                    window.location.href = 'list';
                })
            }else{
                showErrorMsg(data.msg);
            }
        },
        error:function(data){
            alert('网络错误!');
        }
    });
}


//转换日期格式(时间戳转换为datetime格式)
function changeDateFormat(cellval) {
    var dateVal = cellval + "";
    if (cellval != null) {
        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
    }

}

/**
 * 模糊查询
 */
$("#submit-btn").click(function(){
    var data = $("#user-add-form").serialize();
    $.ajax({
        url:'add',
        type:'POST',
        data:data,
        dataType:'json',
        success:function(data){
            if(data.code == 0){
                showSuccessMsg('学生添加成功!',function(){
                    window.location.href = 'list';
                })
            }else{
                showErrorMsg(data.msg);
            }
        },
        error:function(data){
            alert('网络错误!');
        }
    });
});
</script>
</body>
</html>