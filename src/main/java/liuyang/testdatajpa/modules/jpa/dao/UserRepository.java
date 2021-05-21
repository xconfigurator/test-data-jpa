package liuyang.testdatajpa.modules.jpa.dao;

import liuyang.testdatajpa.modules.jpa.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author liuyang
 * @scine 2021/5/21
 */
// 这里不需要加任何注解
public interface UserRepository extends JpaRepository<User, Integer> {
}
