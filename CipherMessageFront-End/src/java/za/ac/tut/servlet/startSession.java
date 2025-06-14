/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
public class startSession extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        
        String pc_name = (String)getServletContext().getInitParameter("pc_name");
        String name = request.getParameter("name");
        Long unique = Long.parseLong(request.getParameter("uniqueID"));
        String idString = request.getParameter("uniqueID");
        
        if(!idString.matches("\\d{3}"))
        {
        
        RequestDispatcher resMan = request.getRequestDispatcher("start.jsp");
        resMan.forward(request, response);
        
        }
        
        session.setAttribute("name", name);
        session.setAttribute("unique", unique);
        session.setAttribute("pc_name", pc_name);
        
        request.setAttribute("name", name);
        request.setAttribute("pc_name", pc_name);
        
        RequestDispatcher resMan = request.getRequestDispatcher("menu.jsp");
        resMan.forward(request, response);
             
    }

    
}
