package liuyang.testdatajpa.modules.jpa.controller;

import liuyang.testdatajpa.modules.jpa.dao.UserRepository;
import liuyang.testdatajpa.modules.jpa.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

/**
 * @author liuyang
 * @scine 2021/6/7
 */
@RestController
public class UserController {
    @Autowired
    UserRepository userRepository;

    @GetMapping("/user/{id}")
    public User getUser(@PathVariable(name = "id") Long id) {
        Optional<User> result = userRepository.findById(id);
        return result.isPresent() ? result.get() : new User();
    }
}
