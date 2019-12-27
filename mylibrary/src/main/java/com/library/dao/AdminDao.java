package com.library.dao;

import org.apache.ibatis.annotations.Param;

public interface AdminDao {

	/**
	 *  根据管理员姓名和密码验证是否存在该列
	 * @param admin_id
	 * @param password
	 * @return	count(*)
	 */
	public int getMatchCount(@Param("admin_id")long admin_id,@Param("password")String password);

	/**
	 * 修改密码
	 * @param admin_id
	 * @param password
	 * @return
	 */
	public int resetPassword(@Param("admin_id")final long admin_id, @Param("password")final String password);

	/**
	 * 根据管理员姓名获取密码
	 * @param admin_id
	 * @return
	 */
	public String getPassword(final long admin_id);

	/**
	 * 根据管理员密码获取密码姓名
	 * @param admin_id
	 * @return
	 */
	public String getUsername(final long admin_id);

}
