package com.mvcjspdemo.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jdbclogindemo.connection.*;
import com.mvcjspdemo.dao.UserDao;
import com.mvcjspdemo.pojo.*;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean checkUserCredentials(User u) {
		try(Connection con = 
				DbConnection.getDatabaseConnection()) {
			
			PreparedStatement pst = 
					con.prepareStatement("SELECT * FROM "
			+ "dept WHERE username = ? AND "
			+ "password = ?");
			
			pst.setString(1, u.getUsername());
			pst.setString(2, u.getPassword());
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.isBeforeFirst())
				return true;
			else
				return false;
		} catch (SQLException | NullPointerException exc) {
			exc.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addNewUser(User u) {
		try(Connection con = 
				DbConnection.getDatabaseConnection()) {
			
			PreparedStatement pst = 
					con.prepareStatement("INSERT INTO"
							+ " dept VALUES(?,?)");
			
			pst.setString(1, u.getUsername());
			pst.setString(2, u.getPassword());
			
			int count = pst.executeUpdate();
			
			if(count > 0)
				return true;
			else
				return false;
		} catch (SQLException | NullPointerException exc) {
			exc.printStackTrace();
			return false;
		}
	}
}
