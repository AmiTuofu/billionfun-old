package com.billionfun.bms.product.mall.dao;

import java.util.List;

import com.billionfun.bms.product.mall.model.SysEvent;
import com.billionfun.bms.product.mall.vo.SysEventVO;

public interface SysEventDao extends BaseDao<SysEvent,String> {
	List<SysEvent> getListByPage(SysEventVO vo);
}