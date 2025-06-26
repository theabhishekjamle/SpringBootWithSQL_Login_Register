package in.webApplicationSpringBoot.main.Services;

import in.webApplicationSpringBoot.main.Entities.User;
import org.springframework.stereotype.Service;


public interface UserService {
   public boolean userRegisterServices(User user);
   public User userLoginServices(String email,String password);
}
