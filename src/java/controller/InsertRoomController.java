/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.RoomDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Room;

/**
 *
 * @author Acer
 */
@WebServlet(name = "InsertRoomController", urlPatterns = {"/InsertRoomController"})
public class InsertRoomController extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String beds = request.getParameter("type");
        double price = Double.parseDouble(request.getParameter("price"));
        
        Room r = new Room();
        
        r.setId(0);
        r.setBeds(beds);
        r.setPrice(price);
        
        RoomDAO rdao = new RoomDAO();
        rdao.insertRoom(r);
        
        response.sendRedirect("/Hotel_Booking_Website/View/adminhome.jsp");
        
        
    }

    

}
