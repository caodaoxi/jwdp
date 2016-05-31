/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jzsec.jwdp.modules.sys.dao;

import com.jzsec.jwdp.common.persistence.TreeDao;
import com.jzsec.jwdp.common.persistence.annotation.MyBatisDao;
import com.jzsec.jwdp.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author jeeplus
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
