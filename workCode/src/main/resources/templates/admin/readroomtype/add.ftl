<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>${siteName!""}|阅览室类型管理-添加阅览室类型</title>
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
                            <div class="card-header"><h4>添加阅览室类型</h4></div>
                            <div class="card-body">
                                <form action="/readType/save" id="read-add-form" method="post" class="row">
                                    <div class="input-group m-b-10">
                                        <span class="input-group-addon">阅览室类型名称</span>
                                        <input type="text" class="form-control required" id="name" name="name" value="" placeholder="请输入阅览室名称" tips="请填写阅览室名称" />
                                    </div>
                                            </thead>
                                            <tbody>
                                    <div class="input-group m-b-10">
                                        <span class="input-group-addon">限制积分</span>
                                        <input type="number" class="form-control required" id="integral" name="integral" value="" oninput="if(value>100){value=100}else{value=value.replace(/[^\d]/g,'')}if(value.indexOf(0)==0){value=0} " placeholder="请输入限制积分" tips="限制积分不能为空且只允许填写数字"/>
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
            if(!checkForm("read-add-form")){
                return;
            }
            var data = $("#read-add-form").serialize();
            $.ajax({
                url:'/readType/save',
                type:'POST',
                data:data,
                dataType:'json',
                success:function(data){
                    if(data.code == 0){
                        showSuccessMsg('阅览室类型添加成功!',function(){
                            window.location.href = '/readType/list';
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
    });

</script>
</body>
</html>