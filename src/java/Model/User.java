/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Connection.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author PVT
 */
public class User {

    String userName, pwd, email, chucvu;

    public User() {
    }

    public User(String userName, String pwd, String email, String cv) {
        this.userName = userName;
        this.pwd = pwd;
        this.email = email;
        this.chucvu = cv;

    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getChucvu() {
        return chucvu;
    }

    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Đăng nhập
    public boolean checkLogin(String username, String password) {
        try {
            Connection con = new MyConnection().getConnection();
            String sql = "select * from Users where Username = ? and Password = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            boolean result = rs.next();
            rs.close();
            ps.close();
            con.close();
            if (result) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Lỗi Database " + e);
        }
        return false;
    }

    //  Thêm tài khoản
    public boolean insertUser(String username, String password, String email, String chucvu) {
        try {
            Connection con = new MyConnection().getConnection();
            String sql = "insert into Users values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, chucvu);

            ps.execute();

            ps.close();
            con.close();
            return true;

        } catch (Exception e) {
            System.out.println("Lỗi Database " + e);
        }
        return false;
    }

    // Update tài khoản
    public boolean updateUser(String username, String password, String email, String chucvu) {
        try {
            Connection con = new MyConnection().getConnection();
            String sql = "update Users set Email = ?, Password = ?, ChucVu = ? where Username like ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(4, username);
            ps.setString(2, password);
            ps.setString(1, email);
            ps.setString(3, chucvu);

            ps.execute();

            ps.close();
            con.close();

            return true;

        } catch (Exception e) {
            System.out.println("Lỗi Database " + e);
        }
        return false;
    }

    // Xóa tài khoản
    public boolean deleteUser(String username) {
        try {
            Connection con = new MyConnection().getConnection();
            String sql = "delete from Users where Username like ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            

            ps.execute();

            ps.close();
            con.close();
            
                return true;
            

        } catch (Exception e) {
            System.out.println("Lỗi Database " + e);
        }
        return false;
    }

    public String ktraQuyen(String username) {
        String quyen = null;
        try {
            Connection con = new MyConnection().getConnection();
            String sql = "select * from Users where Username like '" + username + "'";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                quyen = rs.getString("ChucVu");
            }
            System.out.println(quyen);

            rs.close();
            st.close();
            con.close();
            return quyen;

        } catch (Exception e) {
            System.out.println("Lỗi lấy user\n " + e);
        }
        return quyen;
    }

}
