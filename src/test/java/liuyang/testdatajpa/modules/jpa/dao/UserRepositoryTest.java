package liuyang.testdatajpa.modules.jpa.dao;

import liuyang.testdatajpa.modules.id.Id;
import liuyang.testdatajpa.modules.jpa.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Optional;
import java.util.TimeZone;

/**
 * @author liuyang
 * @scine 2021/5/21
 *
 * 注：如果是SpringBoot 2.1之前，使用的是JUnit4，则这样写：
 * @RunWith(SpringRunner.class)
 * @SpringBootTest
 *
 * 如果是SpringFramework，则使用
 * @RunWith(SpringJunit4ClassRunner.class)
 * @ContextConfiguration(locations = "classpath:applicationContext.xml")
 */
@SpringBootTest
@Slf4j
public class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    // 造数据
    @ParameterizedTest
    @CsvSource({"liuyang1, 18", "liuyang2, 19", "liuyang3,20", "liuyang4, 30", "liuyang5, 38"})
    void testSave(String name, int age) {
        User user = new User();
        user.setId(Id.nextId());
        user.setName(name);
        user.setAge(age);
        user.setEmail("xconfiguration@hotmail.com");
        userRepository.save(user);
    }

    @Test
    void testSave() {
        User user = new User();
        //user.setId(6L);
        user.setId(Id.nextId());
        user.setName("liuyang");
        user.setAge(37);
        user.setEmail("xconfiguration@hotmail.com");
        userRepository.save(user);
    }

    @Test
    void testList() {
        userRepository.findAll().stream().forEach(System.out::println);
    }

    @ParameterizedTest
    @ValueSource(longs = {1428543417356521472l, 1428543417402658816l})
    void testFindById(Long id) {
        //TimeZone tz = TimeZone.getTimeZone("Asia/Shanghai");
        Optional<User> result = userRepository.findById(id);
        log.info(result.isPresent() ? result.get().toString() : "none!");
    }

    @ParameterizedTest
    @ValueSource(longs = {1428543417356521472l, 1428543417402658816l})
    void testUpdate(Long id) {
        Optional<User> userOptional = userRepository.findById(id);
        if (userOptional.isPresent()) {
            User user = userOptional.get();
            user.setName("liuyang");
            userRepository.save(user);
        }
    }

    @Test
    void testDeleteById() {
        userRepository.deleteById(6L);
    }

    @Test
    void testDeleteAll() {
        userRepository.deleteAll();
    }
}
