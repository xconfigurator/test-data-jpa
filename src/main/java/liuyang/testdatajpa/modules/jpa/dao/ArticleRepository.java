package liuyang.testdatajpa.modules.jpa.dao;

import liuyang.testdatajpa.modules.jpa.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.*;

/**
 * @author liuyang
 * @scine 2021/6/18
 */
public interface ArticleRepository extends JpaRepository<Article, Integer>, JpaSpecificationExecutor<Article> {
    /////////////////////////////////////////////////////////////
    // Query 2 方法命名规则查询 定义在ArticleRepository接口中

    // 根据标题查询
    List<Article> findByTitle(String title);

    // 根据标题模糊查询
    List<Article> findByTitleLike(String title);

    // 根据标题和作者查询
    List<Article> findByTitleAndAuthor(String title, String author);

    // 根据ID范围查询
    List<Article> findByAidBetween(Integer startAid, Integer endAid);
    List<Article> findByAidLessThan(Integer endAid);
    List<Article> findByAidIn(List<Integer> aids);

    // 根据创建时间之后查询
    List<Article> findByCreateTimeAfter(Date createTime);
}
