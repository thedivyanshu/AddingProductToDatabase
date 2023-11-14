package com.admin.register.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.pojo.admin;
import com.project.dbutil.DbUtil;

public class RegisterDao {
	public int register(admin Admin) {
		Session session=DbUtil.dbConn();
		Transaction trans=session.beginTransaction();
		int value=(Integer) session.save(Admin);
		trans.commit();
		session.close();
		return value;
		
	}
}
