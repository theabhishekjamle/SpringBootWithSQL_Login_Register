package in.webApplicationSpringBoot.main.Respository;

import in.webApplicationSpringBoot.main.Entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface respository extends JpaRepository<User,Integer> {
    User findByEmail(String email);

}
