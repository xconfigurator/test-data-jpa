package liuyang.testdatajpa.modules.jpa.dao;

import liuyang.testdatajpa.modules.jpa.entity.Article;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.StringUtils;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 参考视频
 * 1. 黑马 基本使用方法
 *  https://www.bilibili.com/video/BV1fh411Z7Wd?p=16
 * 2. 徐庶 补充了黑马没有详细讲解的动态条件查询示例
 *  Query by Example
 *  Query DSL
 *  Specifications
 *  https://www.bilibili.com/video/BV15q4y1w7vu?p=17&spm_id_from=pageDriver
 *
 * @author liuyang
 * @scine 2021/6/18
 * @update 2022/4/9 补充动态条件查询视频资源
 */
@SpringBootTest
@Slf4j
public class ArticleRepositoryTest {

    @Autowired
    private ArticleRepository articleRepository;

    // 造数据
    @ParameterizedTest
    @ValueSource(ints = {1, 2, 3, 4, 5, 6})
    void testSave(int i) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Article article = new Article();
        article.setAuthor("liuyang" + i);
        article.setTitle("《刷题一百遍》");
        article.setCreateTime(sdf.parse("2021-06-18 15:34:11"));
        articleRepository.save(article);
    }

    @Test
    void testQueryFind() {
        Optional<Article> article = articleRepository.findById(100);
        log.info(article.isPresent() ? article.toString() : "没查到");
    }

    @Test
    void testQueryFindAll() {
        articleRepository.findAll().stream().forEach(System.out::println);
    }

    @Test
    void testUpdate() {// 典型场景
        Optional<Article> articleOpt = articleRepository.findById(4);
        if (articleOpt.isPresent()) {
            Article article = articleOpt.get();
            article.setTitle("《刷题一万遍》");
            articleRepository.save(article);
        }
    }

    @Test
    void testUpdateError() {// 这就很那个啥啦！ 会擦掉未设置的已有值。
        Article article = new Article();
        article.setAid(4);
        article.setTitle("《刷题无数遍》");
        articleRepository.save(article);
    }

    @ParameterizedTest
    @ValueSource(ints = {1, 2, 3, 4, 5, 6})
    void testDelet1(int id) {
        articleRepository.deleteById(id);
    }

    @Test
    void testDeletAll() {
        articleRepository.deleteAll();
    }


    /////////////////////////////////////////////////////////////
    // Query 1 来自父接口的方法
    @Test
    void testQueryFindById() {
        // 1. 单个id
        Optional<Article> optArticle = articleRepository.findById(14);
        if (optArticle.isPresent()) {
            Article article = optArticle.get();
            log.info(article.toString());
        } else {
            log.info("实体不存在");
        }

        // 2. 一组ID (发了一条SQL语句)
        List<Integer> ids = Arrays.asList(13, 14, 15, 16, 17);
        List<Article> list = articleRepository.findAllById(ids);
        list.stream().forEach(System.out::println);
    }

    @Test
        // 只演示sort
    void testQueryFindAllSort() {
        Sort sort = Sort.by(Sort.Order.desc("aid"));// 写实体中的属性名

        List<Article> list = articleRepository.findAll(sort);
        list.stream().forEach(System.out::println);
    }

    @Test // 带条件的查询可以考虑使用JPQL （见testQueryJPQL/findByJPQL05）
    void testQueryFindAllPageable() {
        // 仅分页
        //Pageable pageable = PageRequest.of(1, 4);

        // 分页和排序
        Sort sort = Sort.by(Sort.Order.desc("aid"));
        /*
        参见PageRequest的注释：
            Creates a new PageRequest with sort parameters applied.
            Params:
            page – zero-based page index.
            size – the size of the page to be returned.
            sort – must not be null, use Sort.unsorted() instead.
            Since:
            2.0
         */
        Pageable pageable = PageRequest.of(0, 4, sort);

        Page<Article> page = articleRepository.findAll(pageable);
        // 总记录数
        log.info("总记录数：" + page.getTotalElements());// page.getTotal()
        // 总页数
        log.info("总页数：" + page.getTotalPages());// page.getPages()
        // 每页记录条数
        log.info("每页记录条数" + page.getSize());// page.getSize();
        // 当前页数
        log.info("当前页数：" + page.getNumber());// page.getCurrent();
        // 当前页面集合
        page.getContent().stream().forEach(System.out::println);// page.getRecords();
    }

    /////////////////////////////////////////////////////////////
    // Query 2 方法命名规则查询 定义在ArticleRepository接口中
    @Test
    void testQueryMethodNamingRules() throws ParseException {
        log.info("#### findByTitle");
        articleRepository.findByTitle("《刷题一百遍》").stream().forEach(System.out::println);
        log.info("#### findByAidIn");
        articleRepository.findByAidIn(Arrays.asList(11, 12, 13, 14, 15)).stream().forEach(System.out::println);

        log.info("#### findByTitleLike");
        articleRepository.findByTitleLike("%刷题%").stream().forEach(System.out::println);// 注意到%由自己控制。
        log.info("#### findByTitleAndAuthor");
        articleRepository.findByTitleAndAuthor("《刷题一百遍》", "liuyang1").stream().forEach(System.out::println);
        log.info("#### findByAidBetween");
        articleRepository.findByAidBetween(11, 15).stream().forEach(System.out::println);
        log.info("#### findByAidLessThan");
        articleRepository.findByAidLessThan(30).stream().forEach(System.out::println);
        log.info("#### findByCreateTimeAfter");
        articleRepository.findByCreateTimeAfter(new SimpleDateFormat("yyyy-MM-dd").parse("2021-06-01")).stream().forEach(System.out::println);
    }

    /////////////////////////////////////////////////////////////
    // Query 3 JPQL @Query("")
    // 文字教程 https://www.yiibai.com/jpa/jpa-jpql-introduction.html
    // 应用场景：
    //  当方法命名规则不太方便的时候，比如查询参数比较多的情况。
    //  当传入的参数是一个实体对象
    @Test
    void testQueryJPQL() {
        log.info("#### 展示位置参数绑定 注意：JPQL占位符很特殊 下标从1开始。");
        articleRepository.findByJPQL01("liuyang1", "《刷题一百遍》").stream().forEach(System.out::println);
        log.info("#### 展示名字参数绑定 说明：如果下标搞不清楚，则使用参数绑定更稳妥");
        articleRepository.findByJPQL02("liuyang1", "《刷题一百遍》").stream().forEach(System.out::println);
        log.info("#### 展示like模糊查询");
        articleRepository.findByJPQL03("刷题").stream().forEach(System.out::println);
        log.info("#### 展示排序查询");
        articleRepository.findByJPQL04("刷题").stream().forEach(System.out::println);
        log.info("#### 展示分页查询");
        Pageable pageable = PageRequest.of(0, 4, Sort.by(Sort.Order.desc("aid")));
        articleRepository.findByJPQL05("刷题", pageable).stream().forEach(System.out::println);
        log.info("#### 展示传入集合参数查询");
        articleRepository.findByJPQL06(Arrays.asList(11, 12, 13, 14, 15)).stream().forEach(System.out::println);
        log.info("#### 展示传入Bean进行查询(SPEL表达式查询) （这点方法命名规则查询做不到！！）");
        Article article = new Article();
        article.setAuthor("liuyang1");
        article.setTitle("《刷题一百遍》");
        articleRepository.findByJPQL07(article).stream().forEach(System.out::println);
    }

    /////////////////////////////////////////////////////////////
    // Query 4 Native SQL @Query("", nativeQuery=true)
    // 略
    // 应用场景:DB2 Oracle的统计函数，PostgreSQL的gis函数等等......
    @Test
    void testFindByNativeSQL() {
        articleRepository.findByNativeSQL("《刷题一百遍》", "liuyang1").stream().forEach(System.out::println);
    }

    /////////////////////////////////////////////////////////////
    // Query 5 JpaSpecificationExecutor动态查询
    // 这个时候不该看JpaRepository了, 应该看JpaSpecificationExecutor
    // 主要操纵：CriteriaBuilder, Predicate
    // 对比MyBatis-Plus的QueryWrapper,LambdaQueryWrapper
    // 参考视频1：https://www.bilibili.com/video/BV1fh411Z7Wd?p=22
    // 参考视频2：https://www.bilibili.com/video/BV15q4y1w7vu?p=19&spm_id_from=pageDriver （徐庶这里讲得更清楚）
    //@Test
    @ParameterizedTest
    @CsvSource({",", ",《刷题一百遍》", "liuyang1,", "liuyang1,《刷题一百遍》"})
    void testQueryJpaSpecificationExecutor(String author, String title) {
        // 要求：按照标题和作者进行查询（以不为空的属性进行查询）
        String paramTitle = title;// 模拟从前端传入的查询参数
        String paramAuthor = author;// 模拟从前端传入的查询参数
        log.info("author = " + author);
        log.info("title = " + title);

        // 分页查询和排序
        Sort sort = Sort.by(Sort.Order.desc("aid"));
        Pageable pageable = PageRequest.of(0, 4, sort);

        Page<Article> page = articleRepository.findAll(new Specification<Article>() {
                                                           /**
                                                            *
                                                            * @param root              代表实体对象，我们可以通过它来获取属性值
                                                            * @param query             用于生成SQL
                                                            * @param criteriaBuilder   用于拼接查询条件
                                                            * @return
                                                            */
                                                           @Override
                                                           public Predicate toPredicate(Root<Article> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
                                                               List<Predicate> predicates = new ArrayList<>();
                                                               if (StringUtils.hasText(paramTitle)) {
                                                                   Predicate title = criteriaBuilder.equal(root.get("title").as(String.class), paramTitle);// 注意写法
                                                                   predicates.add(title);
                                                               }
                                                               if (StringUtils.hasText(paramAuthor)) {
                                                                   Predicate author = criteriaBuilder.equal(root.get("author").as(String.class), paramAuthor);
                                                                   predicates.add(author);
                                                               }
                                                               Predicate predicate = criteriaBuilder.and(predicates.toArray(new Predicate[]{}));// toArray的时候还需要指定数组类型。
                                                               return predicate;
                                                           }
                                                       }
                , pageable);
        //list.stream().forEach(System.out::println);
        page.getContent().stream().forEach(System.out::println);
    }
}
