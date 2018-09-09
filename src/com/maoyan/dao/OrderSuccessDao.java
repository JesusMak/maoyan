package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.maoyan.util.DBUtil;

public class OrderSuccessDao {
	private static OrderSuccessDao orderSuccessDao;
	
	public OrderSuccessDao() {
		
	}
	public static OrderSuccessDao getOrderSuccessDao() {
		if(orderSuccessDao == null) {
			orderSuccessDao = new OrderSuccessDao();
		}
		return orderSuccessDao;
	}
	
	/**
	 * 修改订单状态
	 * @param orderStatus
	 * @param orderId
	 */
	public static Connection conn = DBUtil.getConnetion();
	
	public void orderSuccess(String orderStatus,String orderId) {
		try {
			PreparedStatement pstmt = conn.prepareStatement("update m_order set order_status=? where order_id=?");
			
			pstmt.setString(1, orderStatus);
			pstmt.setString(2, orderId);
			
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}	
}
