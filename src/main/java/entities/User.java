package entities;

import java.io.Serializable;

public class User implements Serializable {
    private  static final  long serialVersionUID = 1l;
    private  int id;
    private  String username;
    private  String pass;
    private  String fullname;
    private int role;
    private int oid;
    private  String address;
    public User() {
    }

//    public User(int id, int oid, String fullname, String address) {
//        this.id = id;
//        this.oid = oid;
//        this.fullname = fullname;
//        this.address = address;
//    }
//    public User(int id, String username, String pass, String fullname, String address, int role) {
//        this.id = id;
//        this.username = username;
//        this.pass = pass;
//        this.fullname = fullname;
//        this.address = address;
//        this.role = role;
//    }
    public User(int id, String username, String pass, String fullname, int role) {
        this.id = id;
        this.username = username;
        this.pass = pass;
        this.fullname = fullname;
        this.role = role;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", pass='" + pass + '\'' +
                ", fullname='" + fullname + '\'' +
                ", role=" + role +
                '}';
    }
}
