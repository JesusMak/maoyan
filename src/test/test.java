package test;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.maoyan.bean.User;
import com.maoyan.util.C3P0Util;

public class test {

	public static void main(String[] args) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		// User user = UserDaoImpl.getUserDaoImpl().login("11188888888");
		User user = qr.query("select * from user where user_phone = ?", new BeanHandler<User>(User.class),
				"1118888888");
		System.out.println(user);
	}
}