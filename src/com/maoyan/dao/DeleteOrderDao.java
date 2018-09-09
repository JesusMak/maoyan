package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.maoyan.util.DBUtil;

public class DeleteOrderDao {
	private static DeleteOrderDao deleteOrderDao;

	public DeleteOrderDao() {

	}

	public static DeleteOrderDao getDeleteOrderDao() {
		if (deleteOrderDao == null) {
			deleteOrderDao = new DeleteOrderDao();
		}
		return deleteOrderDao;
	}

	public static Connection conn = DBUtil.getConnetion();

	/**
	 * 删除订单
	 * 
	 * @param orderId
	 */
	public void deleteOrder(String orderId) {
		try {
			PreparedStatement pstmt = conn.prepareStatement("delete from m_order where order_id=?");
			pstmt.setString(1, orderId);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
