package com.yxdata.domain;

import lombok.Data;

@Data
public class User {
	private int id;
	private String name;
	private String tel;
	private String addr;
	private int type_id;
	private int del_flag;
	private String remark;
}
