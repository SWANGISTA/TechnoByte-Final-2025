/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entity;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author USER
 */
@Stateless
public class MessageFacade extends AbstractFacade<Message> implements MessageFacadeLocal {

    @PersistenceContext(unitName = "CipherTextEJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MessageFacade() {
        super(Message.class);
    }

    @RolesAllowed("agent")
    @Override
    public String EncrypteMessage(String plainText) {
    
         return plainText.replace('a', '1')
                         .replace('e', '2')
                         .replace('i', '3')
                         .replace('o', '4')
                         .replace('u', '5');
         
    
    }

    @RolesAllowed("manager")
    @Override
    public String DEcrypteMessage(String cipherText) {
   
      return cipherText.replace('1', 'a')
                       .replace('2', 'e')
                       .replace('3', 'i')
                       .replace('4', 'o')
                       .replace('5', 'u');
      
      
    }
     
    @Override
    public String upperCaseConvertor(String plainText) {
    
    return plainText.toLowerCase();
    }
@RolesAllowed({"manager","agent"})
    @Override
    public List<Message> longestMessage() {
    
        Query high = em.createQuery("SELECT MAX(m.sizeOfMessage) FROM Message m");
        Integer largeNum = (Integer) high.getSingleResult();
        
        Query Lms = em.createQuery("SELECT m FROM Message m WHERE m.sizeOfMessage =:largeNum");
        Lms.setParameter("largeNum", largeNum);
        return Lms.getResultList();
    
    }
    
}
