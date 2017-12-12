/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.PreparedStatement;
import Connection.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
/**
 *
 * @author PVT
 */
public class Product {
    String id, name,price, details, images;

    
    
    public Product(String id, String name, String price, String details, String images) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.details = details;
        this.images = images;
    }

    public Product() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }
    
    // Thêm mới sản phẩm
    public boolean insertProduct(String id,String ten,String gia,String mota,String anh){
        try {
            Connection con = new MyConnection().getConnection();
            PreparedStatement ps = con.prepareStatement("insert into Products values(?,?,?,?,?)");
            ps.setString(1, id);
            ps.setString(2, ten);
            ps.setString(3, gia);
            ps.setString(4, mota);
            ps.setString(5, anh);
            ps.execute();
            
            ps.close();
            con.close();
            return true;
        } catch (Exception e) {
            System.out.println("Lỗi insert sản phẩm\n"  + e);
            return false;
            
        }
    }
    
    // Lấy danh sách sản phẩm
    public ArrayList<Product> getProductList(){
        try {
            ArrayList list = new ArrayList();
            Connection con = new MyConnection().getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Products");
            while (rs.next()) {                
                Product sp = new Product(rs.getString("Product_ID"), rs.getString("Product_Name"), rs.getString("Product_Price"), rs.getString("Product_Details"), rs.getString("Images"));
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            return null;
        }
    }
    
    // Lấy danh sách theo từ khóa
    public ArrayList<Product> getSearchList(String tenSP){
        try {
            ArrayList list = new ArrayList();
            Connection con = new MyConnection().getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from Products where Product_Name like '%"+tenSP+"%'");
            while (rs.next()) {                
                Product sp = new Product(rs.getString("Product_ID"), rs.getString("Product_Name"), rs.getString("Product_Price"), rs.getString("Product_Details"), rs.getString("Images"));
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            return null;
        }
    }
    
    // Update sản phẩm
    public boolean updateProduct(String id,String ten,String gia,String mota,String anh){
        try {
            Connection con = new MyConnection().getConnection();
            PreparedStatement ps = con.prepareStatement("update Products set Product_Name = ?, Product_Price = ?,Product_Details = ?,Images = ? where Product_ID like ?");
            
            ps.setString(1, ten);
            ps.setString(2, gia);
            ps.setString(3, mota);
            ps.setString(4, anh);
            ps.setString(5, id);
            ps.execute();
            
            ps.close();
            con.close();
            return true;
        } catch (Exception e) {
            System.out.println("Lỗi update sản phẩm\n"  + e);
            return false;
            
        }
    }
    
    // Xóa sản phẩm
    public boolean deleteProduct(String id){
        try {
            Connection con = new MyConnection().getConnection();
            PreparedStatement ps = con.prepareStatement("delete from Products where Product_ID like ?");
            
            
            ps.setString(1, id);
            ps.execute();
            
            ps.close();
            con.close();
            return true;
        } catch (Exception e) {
            System.out.println("Lỗi delete sản phẩm\n"  + e);
            return false;
            
        }
    }
}
