
package userManagment.Controller;

import User_Managment.DAO.Impl.userManagment_DAO_Impl;
import User_Managment.DAO.userManagmentDAO;
import User_Managment.userManagment;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class userManagment_Controller extends HttpServlet {


    userManagment user = new userManagment();
    userManagment_DAO_Impl userManagmentDaoImpl = new userManagment_DAO_Impl();
    userManagmentDAO userDAO;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       if(request.getParameter("createUser")!=null) {
           String first_name = request.getParameter("first_name");
           String last_name = request.getParameter("last_name");
           String email = request.getParameter("email");
           String telephone = request.getParameter("telephone");
           
           user.setFirst_name(first_name);
           user.setLast_name(last_name);
           user.setEmail(email);
           user.setTelephone(telephone);
           
           userManagmentDaoImpl.createUser(user);
           RequestDispatcher rd = request.getRequestDispatcher("createUser.jsp");
           rd.forward(request, response);
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("readUsers")!=null){
            List<userManagment> userList = new ArrayList();
            userList = userManagmentDaoImpl.readUser();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("users.jsp");
            rd.forward(request, response);
        }
        
        if(request.getParameter("updateUser")!=null){
            int id1 = Integer.parseInt(request.getParameter("id"));
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String email = request.getParameter("email");
            String telephone = request.getParameter("telephone");
            userManagmentDaoImpl.updateUser(id1, first_name, last_name, email, telephone);
            RequestDispatcher rd = request.getRequestDispatcher("createUser.jsp");
            rd.forward(request, response);
        }
        
        if(request.getParameter("deleteUser")!=null) {
            int id2 = Integer.parseInt(request.getParameter("id"));
            user.setId(id2);
            userManagmentDaoImpl.deleteUser(user);
            RequestDispatcher rd = request.getRequestDispatcher("createUser.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
