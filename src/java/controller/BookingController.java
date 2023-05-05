/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.RoomDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Booking;
import model.Room;
import model.User;

/**
 *
 * @author Acer
 */
@WebServlet(name = "BookingController", urlPatterns = {"/BookingController"})
public class BookingController extends HttpServlet {

    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Getting all the rooms for comparison
        RoomDAO rdao = new RoomDAO();
        List<Room> rl = rdao.getAllRooms();
        
        //getting user session
        User u = (User) request.getSession().getAttribute("customer");
        
        //booking form input
        String date = request.getParameter("date");
        int numdays = Integer.parseInt(request.getParameter("numdays"));
        String selectedbed = request.getParameter("roomtype"); 

        
        //determining which room is booked 
        Room bookedroom = null; 
        
        for (int i=0; i<rl.size(); i++)
        {
            if (rl.get(i).getBeds().equals(selectedbed))
            {
                bookedroom = rl.get(i); 
            }
        }
        
        double price= bookedroom.getPrice()*numdays;
        
        Booking newbooking = new Booking();
        newbooking.setRoomid(bookedroom.getId());
        newbooking.setUserid(u.getUserId());
        newbooking.setDate(date);
        newbooking.setDays(numdays);
        newbooking.setPayment(price);
        newbooking.setBeds(bookedroom.getBeds());
        
        HttpSession session = request.getSession();
        
        session.setAttribute("booking", newbooking);
        response.sendRedirect("/Hotel_Booking_Website/View/userProfile.jsp");
        
//        try (PrintWriter out = response.getWriter()) {
//           
//           out.println(u.getUserId());
//           out.println(newbooking.getUserid());
//           out.println(newbooking.getPayment());
//            out.println(u.getName());
//            
//            out.println(bookedroom.getBeds());
//           out.println(bookedroom.getId());
//           out.println(bookedroom.getPrice());
//         }
  
        
    }


}
