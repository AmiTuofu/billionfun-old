package com.billionfun.bms.product.mall.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.billionfun.bms.product.mall.common.utils.Rule;
import com.billionfun.bms.product.mall.common.utils.SearchFilter;
import com.billionfun.bms.product.mall.common.utils.StringUtil;
import com.billionfun.bms.product.mall.dao.SysFuncDao;
import com.billionfun.bms.product.mall.model.SysFunc;
import com.billionfun.bms.product.mall.vo.SysFuncVO;

@Repository
public class SysFuncDaoImpl extends BaseDaoImpl<SysFunc,Long> implements SysFuncDao{

	
	public List<SysFunc> loadFunc(String parentId) {
		StringBuilder hql = new StringBuilder();
		hql.append(" from SysFunc ");
		hql.append(" where parentId = :parentId");
		Map<String, String> proMap = new HashMap<String, String>();
		proMap.put("parentId", parentId);
		
		List<SysFunc> list = super.findAll(hql.toString(), proMap);
		return list;
	}

	public List<SysFunc> getListByPage(SysFuncVO funcVo) {
		StringBuilder hql = new StringBuilder();
		List<String> paramList = new ArrayList<String>();
		hql.append(" from SysFunc f");
		hql.append(" where 1=1");
		
		if(funcVo.getSearch()){
			SearchFilter searchFilter = funcVo.getSearchFilter();
			if(searchFilter!=null){
				for(Rule rule : searchFilter.getRules()){
					if(rule.getOp().equals("eq")){
						hql.append(" and f.").append(rule.getField()).append(" = ?");
						paramList.add(rule.getData());
					}
					if(rule.getOp().equals("cn")){
						hql.append(" and f.").append(rule.getField()).append(" like '%'||?||'%'");
						paramList.add(rule.getData());
					}
				
				}
			}
		}
		
		if(!StringUtil.empty(funcVo.getSort())&&!StringUtil.empty(funcVo.getOrder())){
			hql.append(" order by f.").append(funcVo.getSort()).append(" ").append(funcVo.getOrder());
		}

//		List<Criterion> criterions = funcVo.generateSearchCriteriaFromFilters(funcVo.getFilters());
		List<SysFunc> list = super.getListByPage(funcVo, hql.toString(), paramList);
		return list;
	}

}