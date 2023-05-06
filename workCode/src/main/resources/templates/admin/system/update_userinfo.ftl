<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>${siteName!""}后台管理系统主页</title>
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
              <div class="card-body">
                
                <div class="edit-avatar">
                  <#if ylrc_user.headPic??>
	            		<#if ylrc_user.headPic?length gt 0>
	            		<img src="/photo/view?filename=${ylrc_user.headPic}" id="show-img" class="img-avatar">
	            		<#else>
	            		<img src="/admin/images/default-head.jpg" id="show-img" class="img-avatar">
	            		</#if>
	              </#if>
                  <input type="file" id="select-file" style="display:none;" onchange="upload('show-img','headPic')">
                  <div class="avatar-divider"></div>
                  <div class="edit-avatar-content">
                    <button class="btn btn-default" id="add-pic-btn">修改头像</button>
                    <p class="m-0">选择一张你喜欢的图片，上传图片大小不能超过1M。</p>
                  </div>
                </div>
                <hr>
                <form method="post" action="update_userinfo" class="site-form" id="user-add-form">
                  <input type="hidden" name="headPic" id="headPic" value="${ylrc_user.headPic!""}">
                  <div class="form-group">
                    <label for="username">昵称</label>
                    <input type="text" class="form-control" name="nickName" id="nickName" value="${ylrc_user.nickName!""}"  />
                  </div>

                  <div class="form-group">
                    <label for="username">账号名称</label>
                    <input type="text" class="form-control" name="username" id="username" value="${ylrc_user.username!""}" disabled="disabled" />
                  </div>
                  <div class="form-group">
                    <label for="nickname">手机</label>
                    <input type="text" class="form-control" name="mobile" id="mobile" placeholder="输入您的手机号码" value="${ylrc_user.mobile!""}">
                  </div>
                  <div class="form-group">
                    <label for="email">邮箱</label>
                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="请输入正确的邮箱地址" value="${ylrc_user.email!""}">
                  </div>
                </form>
                  <button type="submit" class="btn btn-primary" id="user-submit">保存</button>
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

    $("#user-submit").click(function(){
        var  mobile=$("#mobile").val();
        var ePattern = /^1[0-9]{10}$/;
        if (!ePattern.test(mobile)){
            showErrorMsg("手机格式错误");
            return;
        }
        var  email=$("#email").val();
        var ePattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if (!ePattern.test(email)){
            showErrorMsg("邮箱格式错误");
            return;
        }
        var data = $("#user-add-form").serialize();
    $.ajax({
            url:'update_userinfo',
            type:'POST',
            data:data,
            dataType:'json',
            success:function(data){
                if(data.code == 0){
                    showSuccessMsg('更新成功!',function(){
                        window.location.href = 'update_userinfo';
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