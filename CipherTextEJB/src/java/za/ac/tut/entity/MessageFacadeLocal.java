/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entity;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author USER
 */
@Local
public interface MessageFacadeLocal {

    void create(Message message);

    void edit(Message message);

    void remove(Message message);

    Message find(Object id);

    List<Message> findAll();
    
    String EncrypteMessage(String plainText);
    
    String upperCaseConvertor(String plainText);

    String DEcrypteMessage(String cipherText);
    
    List<Message> longestMessage();
    
    List<Message> findRange(int[] range);

    int count();
    
}
