<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div >
		<div id="accordion" class="accordion-style1 panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion" href="#collapseOne"> <i
							class="bigger-110 icon-angle-down"
							data-icon-hide="icon-angle-down"
							data-icon-show="icon-angle-right"></i> &nbsp;查询
						</a>
					</h4>
				</div>

				<div class="panel-collapse in" id="collapseOne"
					style="height: auto;" >
					<form class="form-horizontal" id="search-form" style="margin-top:10px;">
						<div class="form-group" style="height: 32px;">
							<label class="col-sm-1 control-label no-padding-right"
								for="form-field-1"> 姓名 </label>

							<div class="col-sm-2">
								<input type="text" name="userInfoName" id="userInfoName"
									placeholder="请输入姓名" class="col-xs-12 col-sm-12" />
							</div>

							<label class="col-sm-2 control-label no-padding-right"
								for="usedYear"> 用电年份</label>
							<div class="col-sm-2">
								<select class="form-control" name="usedYear" id="usedYear">
									<option value="">请选择</option>
									<option value="2011">2011年</option>
									<option value="2012">2012年</option>
									<option value="2013">2013年</option>
									<option value="2014">2014年</option>
									<option value="2015">2015年</option>
									<option value="2016">2016年</option>
									<option value="2017">2017年</option>
									<option value="2018">2018年</option>
								</select>
							</div>

							<label class="col-sm-2 control-label no-padding-right"
								for="usedMonth"> 用电月份</label>
							<div class="col-sm-2">
								<select class="form-control" name="usedMonth" id="usedMonth">
									<option value="">请选择</option>
									<option value="1">1月</option>
									<option value="2">2月</option>
									<option value="3">3月</option>
									<option value="4">4月</option>
									<option value="5">5月</option>
									<option value="6">6月</option>
									<option value="7">7月</option>
									<option value="8">8月</option>
									<option value="9">9月</option>
									<option value="10">10月</option>
									<option value="11">11月</option>
									<option value="12">12月</option>
								</select>
							</div>
					 </div>


						<div class="space-4"></div>

						<div class="form-group">
							<label class="col-sm-1 control-label no-padding-right"
								for="consumption"> 用电量 </label>

							<div class="col-sm-2">
								<input type="number" name="consumption" id="consumption"
									placeholder=" 用电量 " class="col-xs-12" />
							</div>

							<label class="col-sm-2 control-label no-padding-right" for="sum">
								总价 </label>

							<div class="col-sm-2">
								<input type="number" name="sum" id="sum" placeholder=" 总价 "
									class="col-xs-12" />
							</div>
						</div>

						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-1 control-label no-padding-right"
								for="remark"> 备注 </label>

							<div class="col-sm-10">
								<input type="text" name="remark" id="remark" placeholder=" 备注 "
									class="col-xs-12" />
							</div>

						</div>
					</form>
					<div style="    clear: both;float: right;margin-bottom: 10px;">
						<button class="btn btn-sm  btn-primary" type="button" id="btn-search">
							<i class="icon-ok bigger-110"></i> 搜索
						</button>
						<button class="btn btn-sm  btn-primary" type="button" id="btn-reset">
							<i class="icon-undo bigger-110"></i> 重置
						</button>
					</div>
				</div>
			</div>

		</div>
</body>
</html>