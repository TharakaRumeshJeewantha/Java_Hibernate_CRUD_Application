
package User_Managment.DAO;

import User_Managment.userManagment;
import java.util.List;


public interface userManagmentDAO {
    
    // Form Abstract Methods
    public void createUser (userManagment user);
    public List<userManagment> readUser();
    public void updateUser (int id, String first_name, String last_name, String email, String telephone);
    public void deleteUser (userManagment user);
    
}
