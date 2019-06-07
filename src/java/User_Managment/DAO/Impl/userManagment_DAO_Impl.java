package User_Managment.DAO.Impl;

import User_Managment.userManagment;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class userManagment_DAO_Impl {
    
    public void createUser(userManagment user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
    }
    
    public List<userManagment> readUser() {
        List<userManagment> userList = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("From userManagment");
        userList = query.list();
        return userList;
    }
    
    public void updateUser (int id, String first_name, String last_name, String email, String telephone) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        userManagment userDetails = (userManagment)session.load(userManagment.class, id);
        userDetails.setFirst_name(first_name);
        userDetails.setLast_name(last_name);
        userDetails.setEmail(email);
        userDetails.setTelephone(telephone);
        session.update(userDetails);
        transaction.commit();
        session.close();
    }
    
    public void deleteUser (userManagment user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(user);
        transaction.commit();
        session.close();
    }
}
