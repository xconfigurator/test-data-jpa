package liuyang.testdatajpa.modules.jpa.dao;

import liuyang.testdatajpa.modules.jpa.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Optional;

/**
 * @author liuyang
 * @scine 2021/5/21
 */
@SpringBootTest
@Slf4j
public class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    @Test
    void testList() {
        userRepository.findAll().stream().forEach(System.out::println);
    }

    //@Test
    @ParameterizedTest
    @ValueSource(longs = {4, 6})
    void testFindById(Long id) {
        Optional<User> result = userRepository.findById(id);
        log.info(result.isPresent() ? result.get().toString() : "none!");
    }

    @Test
    void testSave() {
        User user = new User();
        user.setId(6L);
        user.setName("liuyang");
        user.setAge(37);
        user.setEmail("xconfiguration@hotmail.com");
        userRepository.save(user);
    }

    @Test
    void testDeleteById() {
        userRepository.deleteById(6L);
    }
}
