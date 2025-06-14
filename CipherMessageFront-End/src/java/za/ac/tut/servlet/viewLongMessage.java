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
public class viewLongMessage extends HttpServlet {

    @EJB
    private MessageFacadeLocal ms;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session  = request.getSession();
        
        List<Message> AllMessages = ms.longestMessage();
        Message mmMessage = new Message();
        String cleanText =  "";
         List<Message> CleanMessages = new ArrayList<>();
        for(int x = 0 ; x < AllMessages.size();x++)
        {
          mmMessage = AllMessages.get(x);
          cleanText = ms.DEcrypteMessage(mmMessage.getCipherText());
          mmMessage.setCipherText(cleanText);
          CleanMessages.add(mmMessage);
        }
        
        
        request.setAttribute("LLMessages", CleanMessages);
        
        RequestDispatcher resMan = request.getRequestDispatcher("LLmessage.jsp");
        resMan.forward(request, response);
        
    }

    
}
