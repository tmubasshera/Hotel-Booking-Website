package controller;

import DAO.RoomDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Room;

/**
 *
 * @author Acer
 */
@WebServlet(name = "getAllRoomsController", urlPatterns = {"/getAllRoomsController"})
public class getAllRoomsController extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RoomDAO rdao = new RoomDAO();
        List<Room> rl = rdao.getAllRooms();
        
        HttpSession session = request.getSession();
        session.setAttribute("rl",rl);
        
        response.sendRedirect("/Hotel_Booking_Website/View/bookingForm.jsp");
        //request.getRequestDispatcher("/View/displayRooms.jsp").forward(request, response);
        
    }

}