/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jzsec.jwdp.modules.sys.dao;

import com.jzsec.jwdp.common.persistence.CrudDao;
import com.jzsec.jwdp.common.persistence.annotation.MyBatisDao;
import com.jzsec.jwdp.modules.sys.entity.SystemConfig;

/**
 * 系统配置DAO接口
 * @author liugf
 * @version 2016-02-07
 */
@MyBatisDao
public interface SystemConfigDao extends CrudDao<SystemConfig> {
	
}