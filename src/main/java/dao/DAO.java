package dao;


import entities.Product;
import entities.User;
import util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    protected ResultSet rs = null;

    //Use case Dang nhap  (B.1 Tiến)
    public User login(String user, String password){
        String query = "select id,username,pass,fullname,role from user \n" + "where username = ?\n" + "and pass = ?";
        try {
            //7. Hệ thống kết nối với cơ sở dữ liệu
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,password);
            //8.  Hệ thống tìm thông tin tài khoản người dùng thông qua tên
            // tài khoản và mật khẩu trong cơ sở dữ liệu.
            rs = ps.executeQuery();
            if (rs.next()){
                return  new User(rs.getInt(1),rs.getString(2),
                        rs.getString(3),rs.getString(4),rs.getInt(5));
            }
        }
        catch (Exception e){
        }
        return null;
    }


    //Use case Xem chi tiet san pham  (B.2 Tiến)
    public Product getProductByID(int id) {
        String sql = "SELECT id,productName,price,image,description FROM products WHERE id = ?";
        try {
            //3. Ket noi co so du lieu
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            // 4. Hệ thống tìm thông tin sản phẩm này trong cơ sở dữ liệu.
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4),rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // lấy tất cả các sp
    public List<Product> getAllProduct()    {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT id,productName,price,image,description FROM products ";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    // load san pham hot
    public List<Product> getProducHot() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT id,productName,price,image,description FROM products  " +
                "where isHot =1 ORDER BY id DESC LIMIT 6";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    // load san pham ban chay
    public List<Product> getProducSell() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT id,productName,price,image,description FROM products  " +
                "where isSell =1 ORDER BY id DESC LIMIT 6";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    // load san pham khuyen mai
    public List<Product> getProducPromotion() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT id,productName,price,image,description FROM products " +
                " where isPromotion =1 ORDER BY id DESC LIMIT 6";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }


    public static void main(String[] args) {
        DAO productDAO = new DAO();
       // System.out.println(productDAO.login("Tien","123456"));
        List<Product> products = productDAO.getProducHot();
        for (Product product : products) {
            System.out.println(product);
        }

    }
}
