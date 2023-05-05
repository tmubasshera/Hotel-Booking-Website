/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DButility.DBconnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author Acer
 */
public class userdao {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    public User getUser(String email, String pass){
        User customer = new User();
         try {
            String selectSQL = "SELECT * FROM USER WHERE email = ? AND password = ?"; 
            conn = DBconnection.openConnection();
            
            ps = conn.prepareStatement(selectSQL);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();

            while (rs.next()) {

                customer.setUserId(rs.getString("userid"));
                customer.setName(rs.getString("name"));
                customer.setPassword(rs.getString("password"));
                customer.setPhoneNo(rs.getString("phone"));
                customer.setEmail(rs.getString("email"));
            }
            DBconnection.closeConnection();
         }
         catch (Exception ex) {
        }
         
         return customer; 
    }
      
   
    public void insertUser(User u) {

        try {
            String insertSQL = "INSERT INTO user (name, password, phone, email, userid) VALUES (?,  ?, ?, ?, NULL)";

            conn = DBconnection.openConnection();
            ps = conn.prepareStatement(insertSQL);
            ps.setString(1, u.getName());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getPhoneNo());
            ps.setString(4, u.getEmail());
            ps.executeUpdate();

            DBconnection.closeConnection();

        } catch (Exception ex) {
        }

    }
    
    
}
