package liuyang.testdatajpa.modules.jparelation.dao;

import liuyang.testdatajpa.modules.jpa.entity.Article;
import liuyang.testdatajpa.modules.jparelation.entity.RArticle;
import liuyang.testdatajpa.modules.jparelation.entity.RArticleCategory;
import liuyang.testdatajpa.modules.jparelation.entity.RArticleComment;
import liuyang.testdatajpa.modules.jparelation.entity.RArticleData;
import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;
import java.util.Optional;

/**
 * @author liuyang
 * @scine 2021/6/25
 */
@SpringBootTest
@Slf4j
public class RArticleRepositoryTest {
    @Autowired
    private RArticleRepository rArticleRepository;
    @Autowired
    private RArticleCategoryRepository rArticleCategoryRepository;

    @Test
    void testUpdateSchema() {
        // 什么也不要写，容器启动，Hibernate根据实体关系自动更新表结构。
        // 注意：
        // spring:
        //  jpa:
        //    hibernate:
        //      ddl-auto: create # update none
    }

    @Test
    void testSave() {
        // Entity::文章
        RArticle article1 = new RArticle();
        article1.setAuthor("张宇");
        article1.setTitle("《36讲》");
        article1.setCreateTime(new Date());

        RArticle article2 = new RArticle();
        article2.setAuthor("张宇");
        article2.setTitle("《题源1000题》");
        article2.setCreateTime(new Date());

        RArticle article3 = new RArticle();
        article3.setAuthor("张宇");
        article3.setTitle("《真题大全解》");
        article3.setCreateTime(new Date());

        // Entity::内容
        RArticleData data1 = new RArticleData();
        data1.setContent("二重积分大薯条");
        RArticleData data2 = new RArticleData();
        data2.setContent("千题之恋");
        RArticleData data3 = new RArticleData();
        data3.setContent("刷题百遍");

        // Entity::评论
        RArticleComment comment11 = new RArticleComment();
        comment11.setComment("真难！");
        RArticleComment comment12 = new RArticleComment();
        comment12.setComment("真好！");

        RArticleComment comment21 = new RArticleComment();
        comment21.setComment("见多识广");
        RArticleComment comment22 = new RArticleComment();
        comment22.setComment("才能见怪不怪");

        // Entity::分类
        RArticleCategory category1 = new RArticleCategory();
        category1.setName("课本");
        RArticleCategory category2 = new RArticleCategory();
        category2.setName("习题集");
        RArticleCategory category3 = new RArticleCategory();
        category3.setName("真题");
        RArticleCategory category4 = new RArticleCategory();
        category4.setName("秘籍");

        // 明确实体间关系
        // 1:1
        article1.setRArticleData(data1);
        data1.setRArticle(article1);

        article2.setRArticleData(data2);
        data2.setRArticle(article2);

        article3.setRArticleData(data3);
        data3.setRArticle(article3);

        // 1:n
        article1.setCommentList(Arrays.asList(comment11, comment12));
        comment11.setRArticle(article1);
        comment12.setRArticle(article1);

        article2.setCommentList(Arrays.asList(comment21, comment22));
        comment21.setRArticle(article2);
        comment22.setRArticle(article2);

        // m:n
        article1.setCategoryList(Arrays.asList(category1, category4));
        article2.setCategoryList(Arrays.asList(category2, category4));
        article3.setCategoryList(Arrays.asList(category3, category4));

        category1.setRArticleList(Arrays.asList(article1));
        category2.setRArticleList(Arrays.asList(article2));
        category3.setRArticleList(Arrays.asList(article3));
        category4.setRArticleList(Arrays.asList(article1, article2, article3));

        rArticleRepository.save(article1);
        rArticleRepository.save(article2);
        rArticleRepository.save(article3);
        // M:N需要加下面的（否则也不报错，就是category表和article_category表没数据）
        rArticleCategoryRepository.save(category1);
        rArticleCategoryRepository.save(category2);
        rArticleCategoryRepository.save(category3);
        rArticleCategoryRepository.save(category4);
    }

    @Test
    void testSelect() {
        Optional<RArticle> optionalRArticle = rArticleRepository.findById(1);// 注意lazy的时候可能还会有点问题。
        if (optionalRArticle.isPresent()) {
            log.info(optionalRArticle.get().getAuthor());
            log.info(optionalRArticle.get().getTitle());
            log.info("########");
            // 1:1 注意这个toString里面不要包含互相引用的属性! 参见实体上@ToString的注解！ 否则会因为循环查询造成StackOverflowError!
            if(optionalRArticle.get().getRArticleData() != null) log.info(optionalRArticle.get().getRArticleData().toString());
            // 1:n
            log.info("########");
            if(optionalRArticle.get().getCommentList() != null) log.info(optionalRArticle.get().getCommentList().toString());
        } else {
            log.info("没查到");
        }
    }

    @Test
    void testUpdate() {

    }

    @Test
    void testDelete() {

    }

}
