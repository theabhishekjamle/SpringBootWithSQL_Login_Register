package in.webApplicationSpringBoot.main.healthCheckWeb;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class healthCheck {
    @GetMapping("/healthCheck")
    public String health(){
        return " Excellent Health !";
    }
}
