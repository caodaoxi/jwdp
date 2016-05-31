/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jzsec.jwdp.modules.monitor.dao;

import com.jzsec.jwdp.common.persistence.CrudDao;
import com.jzsec.jwdp.common.persistence.annotation.MyBatisDao;
import com.jzsec.jwdp.modules.monitor.entity.Monitor;

/**
 * 系统监控DAO接口
 * @author liugf
 * @version 2016-02-07
 */
@MyBatisDao
public interface MonitorDao extends CrudDao<Monitor> {
	
}