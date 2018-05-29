package com.yxdata.domain;

import lombok.Data;

@Data
public class CostRecord {
    private Integer id;

    private Integer userId;

    private Integer usedYear; //使用年

    private Integer usedMonth;//使用月

    private Double consumption; //总用电量

    private Long sum; //电费

    private Integer delFlag;

    private String remark;
}