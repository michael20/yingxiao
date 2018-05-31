/**
 *
 */
package com.yxdata.vo;

import com.yxdata.domain.CostRecord;

import lombok.Data;

/**
 * @author Administrator
 * @date 2018年5月31日 上午9:59:52
 * 前端页面参数接受的封装类
 */
@Data
public class CostRecordVo extends CostRecord {
	
	private Integer UserInfoId;
	
	private String UserInfoName;
	
}
