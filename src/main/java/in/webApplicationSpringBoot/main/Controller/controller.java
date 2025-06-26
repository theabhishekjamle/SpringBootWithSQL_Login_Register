package in.webApplicationSpringBoot.main.Controller;

import in.webApplicationSpringBoot.main.Entities.User;
import in.webApplicationSpringBoot.main.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class controller {

    @Autowired
    public UserService userService;

    @GetMapping("/registrationPage")
    public String openRegisterPage(Model model) {
        model.addAttribute("user",new User());
        System.out.println("RegistrationPage Clicked");
        return "RegistrationPage";
    }

    @PostMapping("/registerForm")
    public String submitRegForm(@ModelAttribute("user") User user,Model model){
       boolean status = userService.userRegisterServices(user);
       if(status){
           model.addAttribute("SuccessMessage","User Registered SuccessFully !");
       }else {
           model.addAttribute("ErrorMessage"," Something Went Wrong ! ");
       }
        return "RegistrationPage";
    }

    @GetMapping("/loginPage")
    public String openLoginPage(Model model){
        model.addAttribute("user",new User());
        return "LoginPage";
    }



    @GetMapping("/profilePage")
    public String profilePage(){
        return "ProfilePage";
    }

    @GetMapping("/homePage")
    public String homePage(){
        return "HomePage";
    }

    @PostMapping("/loginForm")
    public String submitLoginForm(@ModelAttribute("user") User user,Model model){
        System.out.println("Login Page");
        User validUser = userService.userLoginServices(user.getEmail(),user.getPassword());
        if ( validUser != null ) {
            System.out.println("Login Success.!");
            return "HomePage";
        }
       else {
            model.addAttribute("ErrorMessage","Please Enter Correct Email or Password ! ");
            return "LoginPage";
        }
    }



}
