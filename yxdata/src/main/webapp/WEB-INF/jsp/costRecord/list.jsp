<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/static/meta.jsp"%>
<%
	Object users = request.getAttribute("users");
%>
<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<title>Insert title here</title>
<style type="text/css">
td, th {
	text-align: center;
}
</style>
</head>
<body>
	<div style="margin-bottom: 10px;">
		<button class="btn btn-sm  btn-primary" id="btn-add">
			<i class="icon-ok bigger-50"></i> 新增
		</button>
		<button class="btn btn-sm  btn-primary" id="btn-mod">
			<i class="icon-undo bigger-50"></i> 修改
		</button>
		<button class="btn btn-sm btn-primary" id="btn-del">
			<i class="icon-undo bigger-50"></i> 删除
		</button>
	</div>
	
	<div id="add" style="display: none;">
		<jsp:include page="add.jsp"></jsp:include>
	</div>
	
	<div id="search">
		<jsp:include page="search.jsp"></jsp:include>
	</div>
	
	<div style="margin-top: 10px;">
		<table border="1" cellpadding="3" cellspacing="0"
			style="width: 100%; margin: auto" id="userTable">
			<thead>
				<tr>
					<th><input type = "checkbox" class="select-all"></th>
					<th>姓名</th>
					<th>用电年份</th>
					<th>用电月份</th>
					<th>用电量</th>
					<th>总价</th>
					<th>备注</th>
				</tr>
			</thead>

	
		</table>
	</div>


	<script type="text/javascript">
		$(function(){
			<%-- alert("<%=users %>"); --%>
			var users = "${users}";
			
			var userTable = $('#userTable').DataTable( {
		        /* "data": users, */
		        "ajax":{
		        	"url":"<%=basePath%>/costRecord/select2",
		        	"data":function(){
		        		var data =  getFormData("#search-form");
		        		data.tdata = true;
		        		return data;
		        	},
		        	/* "data":{
		        		"tdata":"true"
		        	} */
		        },
		        "dom": 'rtip',
		        "columns": [
		        	{ "data": "" ,
		        		render : function(data, type, row, meta) {  
		                    // 显示行号  
		                    return "<input type='checkbox' value="+ row.id+">";
		                }  
		        	},
		            { "data": "userInfoName",
		        		render:function(data, type, row, meta)
		        		{
		        			if (!row.userInfoName) return "无";
		        			return row.userInfoName;
		        		}
		            },
		            { "data": "usedYear"},
		            { "data": "usedMonth" },
		            { "data": "consumption" },
		            { "data": "sum" },
		            { "data": "remark" }
		        ],
		        columnDefs: [ {
		            orderable: false,
		            className: 'select-checkbox',
		            targets:   0
		            
		        } ],
		        select: {
		            style:    'os',
		            selector: 'td:first-child'
		        },
		        order: [[ 1, 'asc' ]]
	 
		    } );
			
			$("#btn-search").on("click",function(){
				userTable.ajax.reload();
			})
			$("#btn-reset").on("click",function(){
				$("#search-form")[0].reset();
			})
			
			
			$("#btn-del").on("click",function(){
				var selects = $("#userTable tr td input:checked");
				var rs = [];
				for(var i = 0 ; i < selects.length; i++){
					rs.push(selects[i].value);
				}
				console.log("rs:"+rs.toString());
				
				
				//发删除请求
 				 $.ajax({
					 url:"<%=basePath%>/costRecord/delete",
					 data:{
						 id:rs.toString()
					 },
					 success:function(data){
						 layer.msg("删除成功！");
						 userTable.ajax.reload();
					 }
				}) 
				
			})
			
			$("#btn-add").on("click",function(){
				layer.open({
					  type: 1,
					  skin: 'layui-layer-rim', //加上边框
					  area: ['800px', '300px'], //宽高
					  content: $("#add"),
					  btn: ['保存', '取消'], //可以无限个按钮
					  yes:function(index, layero){
						 /*  debugger */
						 var data =  getFormData("#add-form");
					/* 	 console.log(data["userName"]);
						 console.log(data["usedYear"]);
						 console.log(data["usedMonth"]);
						 console.log(data["consumption"]);
						 console.log(data["sum"]);
						 console.log(data["remark"]); */
						 
					 	 console.log("add-form:"+ data["userName"]+" basePath:"+"<%=basePath%>");
					 	 if(!validForm("#add-form")){
							 layer.msg("内容不能为空！");
							 return;
						 }
					 	 $.ajax({
							 url:"<%=basePath%>/costRecord/insert",
							 async:false,
							 type:"post",
							 data:data,
							 success:function(data){
								 layer.msg("保存成功！");
								 userTable.ajax.reload();
							 }
						 }) 
						 layer.close(index);
					  },
					});
			})
		
		//修改
		$("#btn-mod").on("click",function(){
			var selects = $("#userTable input:checked");
		
			if(selects.length > 1 || selects.length == 0){
				layer.msg("只能选择一个进行修改！");
				return false;
			}
			 var sdata = userTable.row($($("#userTable input:checked").parents("tr"))).data();
				layer.open({
					  type: 1,
					  skin: 'layui-layer-rim', //加上边框
					  area: ['800px', '300px'], //宽高
					  content: $("#add"),
					  btn: ['保存', '取消'], //可以无限个按钮
					  success:function(layero, index){
						  
						 
						  $("#add-form #userName").val(sdata.userName);
						  $("#add-form #usedYear").val(sdata.usedYear);
						  $("#add-form #usedMonth").val(sdata.usedMonth);
						  $("#add-form #consumption").val(sdata.consumption);
						  $("#add-form #sum").val(sdata.sum);
						  $("#add-form #remark").val(sdata.remark);
					  },
					  yes:function(index, layero){
						 var data =  getFormData("#add-form");
						 data.id = sdata.id;
						/*  if(!validForm("#add-form")){
							 layer.msg("内容不能为空！");
							 return;
						 } */
						 console.log("data:"+data);
						 $.ajax({
							 url:"<%=basePath%>/costRecord/update",
							 async:false,
							 type:"post",
							 data:data,
							 success:function(data){
								 layer.msg("修改成功！");
								 userTable.ajax.reload();
							 }
						 })
						 layer.close(index);
					  },
					});
			})
			
		function getFormData(id){
			 var d = {};
			 var t = $(id).serializeArray();
			 $.each(t, function() {
			      d[this.name] = this.value;
			 });
			 return d;
		}
			
		function validForm(id){
			var flag = true;
			var inputs = $(id).find("input,select");
			inputs.each(function(index,element){
				if($(this).val() == ""){
					flag = false;
					return flag;
				}
			})
			return flag;
		}
		
		$(".select-all").on("click",function(){
			$("#userTable tr td input[type=checkbox]").each(function(){
				$(this).click();
			});
		})
	})
	</script>
</body>
</html>