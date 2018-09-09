package com.maoyan.util;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {

		
		public static Connection getConn(String drivername,String url,String user,String password) throws ClassNotFoundException, SQLException {
			
			//1.ͨ��java������ƣ����MySQL��������Driver
			Class.forName(drivername);
			//2��ͨ�����������ṩ��DriverManager������Ӷ���Connection
			Connection conn = DriverManager.getConnection(url, user, password);
			//���϶�ͨ���ˣ�����ͨ��Connection����������ݿ��һЩ��Ϣ���������ݿ��Ԫ������Ϣ�����ݿ����ƣ��Լ��汾�ŵȵȣ�
			//������ݿ��Ԫ���ݶ���
			DatabaseMetaData dbmd = conn.getMetaData();
			System.out.println("�����ӵ���"+dbmd.getDatabaseProductName()+"    �汾��Ϊ��"+dbmd.getDatabaseProductVersion());
			return conn;
			
		}
		

}
