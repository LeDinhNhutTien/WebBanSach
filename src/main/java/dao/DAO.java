package dao;


import entities.Product;
import entities.User;
import util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    protected ResultSet rs = null;

    //Use case Dang nhap  (B.1
    //  8.  Hệ thống tìm thông tin tài khoản người dùng thông qua tên
    // tài khoản và mật khẩu trong cơ sở dữ liệu.
    public User login(String user, String password){
        String query = "select id,username,pass,fullname,role from user \n" + "where username = ?\n" + "and pass = ?";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }


    //Use case Xem chi tiet san pham  (B.2 Tiến)
    // 4. Hệ thống tìm thông tin sản phẩm này trong cơ sở dữ liệu.
    public Product getProductByID(int id) {
        String sql = "SELECT id,productName,price,image,description FROM products WHERE id = ?";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // lấy tất cả các sp
    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT id,productName,price,image,description FROM products ";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    // load san pham hot
    public List<Product> getProductHot() {
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
                        rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    // load san pham ban chay
    public List<Product> getProductSell() {
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
                        rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    // load san pham khuyen mai
    public List<Product> getProductPromotion() {
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
                        rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    //    Use case Đăng ký tài khoản Long
    // Signup( Đăng ký)
    // Kiểm tra tài khoản có tồn tại hay không
    public User checkUserExist(String user) {
        String query = "select * from user where username = ?\n";
        try {
            conn = ConnectionUtil.getConnection(); // mo ket noi voi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // Tạo account của user
    public void singup(String id, String user, String pass) {
        String query = "insert into user values(?,?,?,0,0,0)";
        try {
            conn = ConnectionUtil.getConnection(); // mo ket noi voi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, user);
            ps.setString(3, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // Lấy ra id của user
    public int getNewID() {
        int newID = 0;
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement("SELECT * FROM user order by id DESC Limit 1");
            rs = ps.executeQuery();
            if (rs.next()) {
                newID = rs.getInt("id");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return newID;
    }


    public static void main(String[] args) {
        DAO productDAO = new DAO();
        System.out.println(productDAO.login("Tien","1234567"));
//        List<Product> products = productDAO.getProductHot();
//        for (Product product : products) {
//            System.out.println(product.toString());
//        }
    }
}
