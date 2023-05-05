package DAO;

import DButility.DBconnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Room;

public class RoomDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    public List<Room> getAllRooms(){
        List<Room> rl = new ArrayList<Room>();
        
        try{
            String sqlSelect = "SELECT * FROM ROOM";
            conn = DBconnection.openConnection();
            
            ps = conn.prepareStatement(sqlSelect);
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                Room r = new Room();
                r.setId(rs.getInt("roomid"));
                r.setBeds(rs.getString("beds"));
                r.setPrice(rs.getDouble("price"));       
               
                rl.add(r);
            }
            
            DBconnection.closeConnection();
        }catch (Exception ex){}
        
        return rl;
        
        
    }
    
    public void deleteRoom(String type){
        
         
        try {
            String sqldelete = "DELETE FROM room WHERE beds = ?;";
            conn=DBconnection.openConnection();
            
            ps = conn.prepareStatement(sqldelete);
            ps.setString(1, type);
            ps.executeUpdate();
            
            DBconnection.closeConnection();
            
        } catch (Exception ex) {}
        
        
    }
    
    public void insertRoom(Room r){
        try {
            String sqlInsert = "INSERT INTO room (roomid, beds, price) VALUES (NULL, ?, ?);";
            conn=DBconnection.openConnection();
            
            ps = conn.prepareStatement(sqlInsert);
            ps.setString(1, r.getBeds());
            ps.setDouble(2, r.getPrice());
            ps.executeUpdate();
            
            DBconnection.closeConnection();
            
        } catch (Exception ex) {}
                
        
    }
    public void updateRoom(String type, double price){
        
        try {
            String sqlUpdate = "UPDATE room SET price = ? WHERE beds = ?;";
            conn=DBconnection.openConnection();
            
            ps = conn.prepareStatement(sqlUpdate);
            ps.setDouble(1, price);
            ps.setString(2, type);
            ps.executeUpdate();
            
            DBconnection.closeConnection();
            
        } catch (Exception ex) {}
        
    }
    
    
}
