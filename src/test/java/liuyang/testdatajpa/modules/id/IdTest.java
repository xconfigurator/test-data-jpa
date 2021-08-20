package liuyang.testdatajpa.modules.id;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

/**
 * @author liuyang
 * @scine 2021/8/20
 */
@Slf4j
public class IdTest {
    @Test
    void testId() {
        log.info("id = {}", Id.nextId());
    }
}
