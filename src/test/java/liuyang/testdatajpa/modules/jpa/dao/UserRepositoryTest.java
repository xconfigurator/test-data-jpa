package liuyang.testdatajpa.modules.jpa.dao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @author liuyang
 * @scine 2021/5/21
 */
@SpringBootTest
public class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    @Test
    void testList() {
        userRepository.findAll().stream().forEach(System.out::println);
    }
}
