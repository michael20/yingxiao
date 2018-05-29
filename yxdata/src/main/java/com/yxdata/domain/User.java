package com.yxdata.domain;

import lombok.Data;

@Data
public class User {
	
	//id
	private Integer id;
	
	//客户名称
	private String name;
	
	//联系电话
	private String tel;
	
	//客户地址
	private String addr;
	
	//用电类型
	private Integer typeId;
	
	//删除标志
	private Integer delFlag;
	
	//备注
	private String remark;
	
}
