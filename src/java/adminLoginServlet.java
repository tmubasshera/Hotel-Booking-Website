/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Acer
 */
@WebServlet(urlPatterns = {"/adminLoginServlet"})
public class adminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("ademail");
        String pw = request.getParameter("password");
        
        if (email.equals("admin@gmail.com")&& pw.equals("admin123"))
        {     
            request.getRequestDispatcher("/View/adminhome.jsp").forward(request, response);
            
            //response.sendRedirect("/Hotel_Booking_Website/View/adminhome.jsp");
        }
        else {
            //HttpSession session = request.getSession();
            request.setAttribute("msg", "Invalid Email or password, please try again");
            request.getRequestDispatcher("/View/adminLogin.jsp").forward(request, response);
            //response.sendRedirect("/Hotel_Booking_Website/View/adminLogin.jsp");
        
        }
        
            HttpSession session = request.getSession(); 
            session.setAttribute("ademail", email);
            session. setAttribute("admin_pw", pw);
    }
}
