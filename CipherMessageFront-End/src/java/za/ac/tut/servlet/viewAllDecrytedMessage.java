/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.Message;
import za.ac.tut.entity.MessageFacadeLocal;

/**
 *
 * @author USER
 */
public class viewAllDecrytedMessage extends HttpServlet {

    @EJB
    private MessageFacadeLocal ms;
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        List<Message> AllMessages = ms.findAll();
        List<Message> CleanMessages = new ArrayList<>();
        Message mmMessage = new Message();
        String cleanText =  "";
        
        for(int x = 0 ; x < AllMessages.size();x++)
        {
          mmMessage = AllMessages.get(x);
          cleanText = ms.DEcrypteMessage(mmMessage.getCipherText());
          mmMessage.setCipherText(cleanText);
          CleanMessages.add(mmMessage);
        }
        
        
        
        request.setAttribute("allMessages", CleanMessages);
        RequestDispatcher resMan = request.getRequestDispatcher("Allmessages.jsp");
        resMan.forward(request, response);
        
      
    }

    
}
