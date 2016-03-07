package com.billionfun.bms.product.mall.service;

import java.text.ParseException;
import java.util.List;

import com.billionfun.bms.product.mall.model.SysEvent;
import com.billionfun.bms.product.mall.vo.SysEventVO;

public interface SysEventService extends
		BaseService<SysEvent, SysEventVO, String> {
	List<SysEventVO> search(SysEventVO vo);

	boolean save(SysEventVO vo)throws ParseException;
	
	boolean update(SysEventVO vo)throws ParseException;
	
	boolean delete(SysEventVO vo);
	
	List<SysEventVO> getRemindList();
}
