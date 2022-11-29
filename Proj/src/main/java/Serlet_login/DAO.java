package Serlet_login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Serlet_news.Car;

public class DAO {
	Connection conec = null;
	PreparedStatement pre = null;
	ResultSet rs = null;

	public Account checklogin(String user, String passw) {
		String query = "select * from User_account where Name_user =? and passw =?";
		try {
			conec = new DBcontext().getConnection(); // mo ket noi sql
			pre = conec.prepareStatement(query);
			pre.setString(1, user);
			pre.setString(2, passw);
			rs = pre.executeQuery(); // sử dụng chủ yếu cho các câu query select.
			while (rs.next()) {
				Account a = new Account(rs.getString(1), rs.getString(2), null, rs.getInt(7));
				return a;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public Account checkaccount(String user) { // check tk da ton tai hay chua
		String query = "select * from User_account where [Name_user]=?";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			pre.setString(1, user);
			rs = pre.executeQuery(); // ham tra ve ket qua
			while (rs.next()) {
				return new Account(rs.getString(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public Account checkaemail(String email) { // check tk da ton tai hay chua
		String query = "select * from User_account where [email]=?";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			pre.setString(1, email);
			rs = pre.executeQuery(); // ham tra ve ket qua
			while (rs.next()) {
				return new Account(rs.getString(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public void sigup(String User, String pass, String email, String fname, String lname, String check) {
		String query = "insert into User_account  values(?,?,?,?,?,?,0);";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			pre.setString(1, User);
			pre.setString(2, pass);
			pre.setString(3, email);
			pre.setString(4, fname);
			pre.setString(5, lname);
			pre.setString(6, check);
			pre.executeUpdate(); // vi insert k co kq tra ve
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public List<Car> searchinfo(String name) {
		List<Car> list = new ArrayList<>();
		String query = "select * from Car_infor where  Name_car like ?";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			pre.setString(1, "%" + name + "%");
			rs = pre.executeQuery(); // ham tra ve ket qua
			while (rs.next()) {
				list.add(new Car(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5)));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<Car> searchall() {
		List<Car> list = new ArrayList<>();
		String query = "select * from Car_infor ";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			rs = pre.executeQuery(); // ham tra ve ket qua
			while (rs.next()) {
				list.add(new Car(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5)));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<Account> listuser(int id) {
		List<Account> list = new ArrayList<>();
		String query = "select*from User_account where id=?;";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			pre.setInt(1, id);
			rs = pre.executeQuery(); // ham tra ve ket qua
			while (rs.next()) {
				list.add(new Account(rs.getString(1), rs.getString(2), rs.getString(3)));

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	public void deleteemploy(String user) {
		String query = "delete from User_account where Name_user =?;";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			pre.setString(1, user);
			pre.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	public Account watchemploy(String user ){
			String query ="select *  from User_account where name_User =?;";
			try {
				conec = new DBcontext().getConnection();
				pre = conec.prepareStatement(query);
				pre.setString(1, user);
				rs = pre.executeQuery();
				while(rs.next()) {
					 return new Account(rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return null;
			
			
		}
	public List<Car> gettop3 (){
		List<Car> list = new ArrayList<>();
		String query ="select top 3 * from Car_infor;";
		try {
			conec = new DBcontext().getConnection();
			pre = conec.prepareStatement(query);
			
			rs = pre.executeQuery();
			while(rs.next()) {
				list.add(new Car(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4),rs.getInt(5)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
		
	}
	public static void main(String[] args) {
		DAO d = new DAO();
//		List<Car> list = new ArrayList<>();
//		System.out.println(list = d.gettop3());
		
		System.out.println(d.checklogin("Locendou", "loc1234560"));
		
		}
	}


