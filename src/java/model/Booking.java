
package model;

import java.sql.Date;

public class Booking {
    private int bookingid;
    private String userid;
    private int roomid;
    private String beds; 
    private String date;
    private int days; 
    private double payment; 

    public Booking() {
    }

    public String getBeds() {
        return beds;
    }
    

    public void setBeds(String beds) {
        this.beds = beds;
    }

    public Booking(int bookingid, String userid, int roomid, String date, int days, double payment) {
        this.bookingid = bookingid;
        this.userid = userid;
        this.roomid = roomid;
        this.date = date;
        this.days = days;
        this.payment = payment;
    }

    public int getBookingid() {
        return bookingid;
    }

    public void setBookingid(int bookingid) {
        this.bookingid = bookingid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public int getRoomid() {
        return roomid;
    }

    public void setRoomid(int roomid) {
        this.roomid = roomid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }
    
    
    
}
