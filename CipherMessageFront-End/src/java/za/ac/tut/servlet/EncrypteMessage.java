/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.servlet;

import java.io.IOException;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.MessageFacadeLocal;
import za.ac.tut.entity.Message;


/**
 *
 * @author USER
 */
public class EncrypteMessage extends HttpServlet {

    @EJB
    private MessageFacadeLocal ms;
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String plainText = request.getParameter("message");
        
        Long uniqueID = (Long) session.getAttribute("unique");
        String pc_name = (String) session.getAttribute("pc_name");
        String name = (String) session.getAttribute("name");
        
        String smallCase = ms.upperCaseConvertor(plainText);
        byte[] sizeArray = smallCase.getBytes();
        int size = sizeArray.length;
        
        String EncryptedMessage = ms.EncrypteMessage(smallCase);
        
        Message mmMessage = new Message();
        mmMessage.setAgentId(uniqueID);
        mmMessage.setCipherText(EncryptedMessage);
        mmMessage.setDateCreation(new Date());
        mmMessage.setSizeOfMessage(size);
        mmMessage.setAgentName(name);
        
        ms.create(mmMessage);
        request.setAttribute("message", mmMessage);
        request.setAttribute("name", name);
        request.setAttribute("pc_name", pc_name);
        
        RequestDispatcher resMan = request.getRequestDispatcher("EncrypteMessage.jsp");
        resMan.forward(request, response);
        
        
        
        
      
    }

}
