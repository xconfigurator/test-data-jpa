package liuyang.testdatajpa.modules.jpa.dao;

import liuyang.testdatajpa.modules.jpa.entity.Article;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.*;

/**
 * @author liuyang
 * @scine 2021/6/18
 */
public interface ArticleRepository extends JpaRepository<Article, Integer>, JpaSpecificationExecutor<Article> {
    /////////////////////////////////////////////////////////////
    // Query 2 方法命名规则查询 定义在ArticleRepository接口中
    // 文字教程：https://blog.csdn.net/je_ge/article/details/53294949
    // Idea的提示相当神奇！！

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

    /////////////////////////////////////////////////////////////
    // Query 3 JPQL @Query("")
    // 文字教程 https://www.yiibai.com/jpa/jpa-jpql-introduction.html
    // 应用场景：
    // 1. 当方法命名规则不太方便的时候，比如查询参数比较多的情况。
    // 2. 当传入的参数是一个实体对象
    // 展示位置参数绑定 占位符从1开始！！！！
    @Query("from Article a where a.author = ?1 and a.title = ?2")
    List<Article> findByJPQL01(String author, String title);

    // 展示名字参数绑定
    @Query("from Article a where a.author = :author and a.title = :title")
    List<Article> findByJPQL02(@Param("author") String author
            ,@Param("title") String title);

    // 展示like模糊查询
    @Query("from Article a where a.title like %:title%")
    List<Article> findByJPQL03(@Param("title") String title);

    // 展示排序查询
    @Query("from Article a where a.title like %:title% order by a.aid desc")
    List<Article> findByJPQL04(@Param("title") String title);

    // 展示分页查询
    @Query("from Article a where a.title like %:title%")
    List<Article> findByJPQL05(@Param("title") String title
            , Pageable pageable);

    // 展示传入集合参数查询
    @Query("from Article a where a.aid in :aids")
    List<Article> findByJPQL06(@Param("aids") Collection<Integer> aids);

    // 展示传入Bean进行查询(SPEL表达式查询) （这点方法命名规则查询做不到！！）
    @Query("from Article a where a.title = :#{#article.title} and a.author = :#{#article.author}")
    List<Article> findByJPQL07(@Param("article") Article article);
}
