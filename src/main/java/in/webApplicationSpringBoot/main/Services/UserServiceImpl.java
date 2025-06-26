package in.webApplicationSpringBoot.main.Services;

import in.webApplicationSpringBoot.main.Entities.User;
import in.webApplicationSpringBoot.main.Respository.respository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private respository UserRespository;

    @Override
    public boolean userRegisterServices(User user) {
        try {
            UserRespository.save(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public User userLoginServices(String email, String password) {
        User validUser = UserRespository.findByEmail(email);
        if(validUser != null && validUser.getPassword().equals(password)) return validUser;
        return null;
    }


}
