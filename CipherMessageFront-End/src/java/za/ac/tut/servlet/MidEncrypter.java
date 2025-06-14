/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class MidEncrypter extends HttpServlet {

    @EJB
    private MessageFacadeLocal ms;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String name = (String) session.getAttribute("name");
        String pc_name = (String) session.getAttribute("pc_name");
        Long uniqueID = (Long)session.getAttribute("unique");
        
        
        String plainMessage = request.getParameter("message");
        String lowerCase = ms.upperCaseConvertor(plainMessage);
        String EncryptedMessage = ms.EncrypteMessage(lowerCase);
        
        byte[] arrayByte = EncryptedMessage.getBytes();
        int size = arrayByte.length;
        
        Message mmMessage = new Message();
        mmMessage.setAgentName(name);
        mmMessage.setDateCreation(new Date());
        mmMessage.setCipherText(EncryptedMessage);
        mmMessage.setSizeOfMessage(size);
        mmMessage.setAgentId(uniqueID);
        
        ms.create(mmMessage);
        
        request.setAttribute("message", mmMessage);
        request.setAttribute("name", name);
        request.setAttribute("pc_name", pc_name);
        
        RequestDispatcher resMan = request.getRequestDispatcher("EncrypteMessage.jsp");
        resMan.forward(request, response);
        
        
        
       
    }

   
}
