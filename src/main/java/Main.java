import DAO.UserDAOImplJDBC;
import Model.User;
import Service.UserService;
import exception.DBException;

import java.sql.SQLException;

public class Main {


    public static void main(String[] args) throws DBException, SQLException {   //Метод только для теста
        UserDAOImplJDBC.dropTable();
        UserDAOImplJDBC.createTable();
        UserService userService = UserService.getInstance();
        userService.addUser(new User("DarthAxis", "mail", 32L));
        userService.addUser(new User("Kostya", "mail@ghb.ru", 29L));
        userService.addUser(new User("РусскоеИмя", "maiaxl1", 15L));
        userService.addUser(new User("Другое", "another@smail.ru", 16L));
        userService.addUser(new User("SovsemДругое", "tooanother@vmail.ru", 20L));
//        for (User user : userService.getAllUsers()) {
//            System.out.println(user.getId() + " " + user.getName() + " " + user.getEmail() + " " + user.getAge());
//        }
//        userService.deleteUser(3L);
//        userService.updateUser(new User(2L, "name111", "mail111", 20L));
//        System.out.println(userService.checkUserByEmail("mail"));
//        System.out.println(userService.checkUserByEmail("xxxxx"));
//
//        for (User user : userService.getAllUsers()) {
//            System.out.println(user.getId() + " " + user.getName() + " " + user.getEmail() + " " + user.getAge());
//        }


    }

}
