<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.form-horizontal .form-group {
    margin-right: 0px;
    margin-left: 0px;
}


</style>
</head>
<body>
	<div style="margin-top:10px;" >
		<form class="form-horizontal" id="add-form"  >
			<div class="form-group" style="height: 32px;">
				<label class="col-sm-2 control-label no-padding-right"
					for="form-field-1"> 姓名 </label>

				<div class="col-sm-4">
					<input type="text" name="name" id="name" placeholder="请输入姓名"
						class="col-xs-12 col-sm-12" />
				</div>
				<label class="col-sm-2 control-label no-padding-right"
					for="form-field-1"> 用电类型 </label>

				<div class="col-sm-4">
					<select class="form-control" name="typeId" id="typeId">
						<option value="">请选择</option>
						<option value="1">居民用电</option>
						<option value="2">商业用电</option>
					</select>
				</div> 
			</div>

			<div class="space-4"></div>

			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-right"
					for="form-field-1"> 电话 </label>

				<div class="col-sm-4">
					<input type="text" name="tel" id="tel" placeholder=" 电话 "
						class="col-xs-12" required/>
				</div>
				<label class="col-sm-2 control-label no-padding-right"
					for="form-field-1"> 备注 </label>

				<div class="col-sm-4">
					<input type="text" name="remark" id="remark" placeholder=" 备注 "
						class="col-xs-12" />
				</div>
			</div>

			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-right"
					for="form-field-1"> 地址 </label>

				<div class="col-sm-10">
					<input type="text" name="addr" id="addr" placeholder=" 地址 "
						class="col-xs-12" />
				</div>

			</div>
		</form>
		
	</div>
</body>
</html>