package com.billionfun.bms.product.mall.controllers;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.billionfun.bms.product.mall.model.SysEvent;
import com.billionfun.bms.product.mall.service.SysEventService;
import com.billionfun.bms.product.mall.vo.SysEventVO;

@RequestMapping("/system/event")
@Controller
public class SysEventController extends BaseController {

	@Autowired
	private SysEventService eventService;

	@RequestMapping("/query")
	public String query(ModelMap modelMap, SysEventVO vo) {
		List<SysEventVO> eventVOs = eventService.query(vo);
		modelMap.put("list", eventVOs);
		modelMap.put("page", vo.getPage());
		modelMap.put("total", vo.getTotal());
		modelMap.put("records", vo.getRecords());
		return "system/event/query";
	}

	@RequestMapping("/search")
	public String search(ModelMap modelMap, SysEventVO vo) {
		List<SysEventVO> eventVOs = eventService.search(vo);
		modelMap.put("userdata", eventVOs);
		modelMap.put("list", eventService.search(vo));
		modelMap.put("page", vo.getPage());
		modelMap.put("total", vo.getTotal());
		modelMap.put("records", vo.getRecords());
		return "system/event/search";
	}

	@RequestMapping("/modify")
	public String modify(ModelMap modelMap, SysEventVO vo) {
		SysEvent event = new SysEvent();
		BeanUtils.copyProperties(vo, event);
		eventService.update(event);
		return "system/event/modify";
	}

	@RequestMapping("/add")
	public String add(ModelMap modelMap, SysEventVO vo) {
		SysEvent event = new SysEvent();
		BeanUtils.copyProperties(vo, event);
		event.setStatus(1);
		eventService.save(event);
		modelMap.put("id", event.getId());
		return "system/event/add";
	}

	@RequestMapping("/delete")
	public String delete(ModelMap modelMap, SysEventVO vo) {
		eventService.delete(vo.getId());
		return "system/event/delete";
	}
}