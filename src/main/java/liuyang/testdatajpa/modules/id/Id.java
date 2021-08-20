package liuyang.testdatajpa.modules.id;

import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;

/**
 * @author liuyang
 * @scine 2021/8/20
 */
public class Id {
    private static Snowflake snowflake;
    private static long workerId = 1;      // 5位：1 - 31
    private static long datacenterId = 1;  // 5位：1 - 31

    // 注：在普通的Bean中想完成类似的功能，可以使用@PostConstruct注解。这个是javax包中的。
    static {
        snowflake = IdUtil.createSnowflake(workerId, datacenterId);
    }

    public static long nextId() {
        return snowflake.nextId();
    }
}
