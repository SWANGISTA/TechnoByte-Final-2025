package za.ac.tut.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-06-13T15:37:07")
@StaticMetamodel(Message.class)
public class Message_ { 

    public static volatile SingularAttribute<Message, Date> dateCreation;
    public static volatile SingularAttribute<Message, String> cipherText;
    public static volatile SingularAttribute<Message, Integer> sizeOfMessage;
    public static volatile SingularAttribute<Message, String> agentName;
    public static volatile SingularAttribute<Message, Long> id;
    public static volatile SingularAttribute<Message, Long> AgentId;

}