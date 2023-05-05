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
import javax.servlet.http.HttpSession;
import model.Booking;
import model.User;

/**
 *
 * @author Acer
 */
public class BookingDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    public void insertBooking(Booking b){
        try {
            String sqlInsert = "INSERT INTO booking (bookingid, userid, roomid, date, days, payment) VALUES (NULL, ?, ?, ?, ?, ?);";
            conn=DBconnection.openConnection();
            
            ps = conn.prepareStatement(sqlInsert);
            ps.setString(1, b.getUserid());
            ps.setInt(2, b.getRoomid());
            ps.setString(3, b.getDate());
            ps.setInt(4, b.getDays());
            ps.setDouble(5, b.getPayment());
            ps.executeUpdate();
            
            DBconnection.closeConnection();
            
        } catch (Exception ex) {}
    }
    
    //no need for a booking deleter as it is not added to db unless confirmed
    
//    public void deleteBooking(Booking b){
//        try {
//            String sqldelete = "DELETE FROM booking WHERE userid = ?;";
//            conn=DBconnection.openConnection();
//            
//            ps = conn.prepareStatement(sqldelete);
//            ps.setString(1, b.getUserid());
//            ps.executeUpdate();
//            
//            DBconnection.closeConnection();
//            
//        } catch (Exception ex) {}
//        
   // }
    
    
}
