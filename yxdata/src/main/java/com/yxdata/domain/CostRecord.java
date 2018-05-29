package com.yxdata.domain;

import lombok.Data;

@Data
public class CostRecord {

	private Integer id;
	
	private Integer userId;
	
	private Integer usedYear; // 使用年份
	
	private Integer userdMonth; // 使用月份
	
	private double consumption; // 用电量
	
	private double sum; // 电费总额
	
	private Integer delFlag;
	
	private String remark;
}
