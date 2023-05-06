<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, clbzz-scalable=no" />
<title>${siteName!""}|班级管理-添加班级</title>
<#include "../common/header.ftl"/>

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
              <div class="card-header"><h4>添加班级</h4></div>
              <div class="card-body">
                <form action="add" id="clazz-add-form" method="post" class="row">
                  <#--<div class="form-group col-md-12">-->
                    <#--<label>头像上传</label>-->
                    <#--<div class="form-controls">-->
                      <#--<ul class="list-inline clearfix lyear-uploads-pic">-->
                        <#--<li class="col-xs-4 col-sm-3 col-md-2">-->
                          <#--<figure>-->
                            <#--<img src="/admin/images/default-head.jpg" id="show-picture-img" alt="默认头像">-->
                          <#--</figure>-->
                        <#--</li>-->
                        <#--<input type="hidden" name="headPic" id="headPic">-->
                        <#--<input type="file" id="select-file" style="display:none;" onchange="upload('show-picture-img','headPic')">-->
                        <#--<li class="col-xs-4 col-sm-3 col-md-2">-->
                          <#--<a class="pic-add" id="add-pic-btn" href="javascript:void(0)" title="点击上传"></a>-->
                        <#--</li>-->
                      <#--</ul>-->
                    <#--</div>-->
                  <#--</div>-->

                  <div class="input-group m-b-10">
                    <span class="input-group-addon">班级名</span>
                    <input type="text" class="form-control required" id="claname" name="claname" value="" placeholder="请输入班级名" tips="请填写班级名" />
                  </div>
                  <div class="input-group m-b-10">
                    <span class="input-group-addon">学院名</span>
                    <input type="text" class="form-control required" id="college" name="college" value="" placeholder="请输入学院" tips="请填写学院" />
                  </div>
                  <div class="input-group m-b-10">
                    <span class="input-group-addon">专业名</span>
                    <input type="text" class="form-control required" id="major" name="major" value="" placeholder="请输入专业" tips="请填写专业" />
                  </div>
                      <div class="input-group m-b-10">
                          <span class="input-group-addon">选择教师</span>

                          <select name="teacher" class="form-control" id="teacher">
                          <#if teachers?size gt 0>
                    	     <#list teachers as teachers>
                               <option value="${teachers.id}">工号：${teachers.teacherSno} &nbsp;教师名：${teachers.user.nickName}</option>
                             </#list>
                          </#if>
                          </select>
                      </div>
                  <div class="form-group col-md-12">
                    <button type="button" class="btn btn-primary ajax-post" id="add-form-submit-btn">确 定</button>
                    <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
                  </div>
                </form>
       
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>
<#include "../common/footer.ftl"/>
<script type="text/javascript" src="/admin/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="/admin/js/main.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//提交按钮监听事件
	$("#add-form-submit-btn").click(function(){
		if(!checkForm("clazz-add-form")){
			return;
		}
		var data = $("#clazz-add-form").serialize();
		$.ajax({
			url:'add',
			type:'POST',
			data:data,
			dataType:'json',
			success:function(data){
				if(data.code == 0){
					showSuccessMsg('班级添加成功!',function(){
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
	//监听上传图片按钮
	$("#add-pic-btn").click(function(){
		$("#select-file").click();
	});
});

</script>
</body>
</html>