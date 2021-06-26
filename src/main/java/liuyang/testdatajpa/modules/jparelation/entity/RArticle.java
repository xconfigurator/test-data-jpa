package liuyang.testdatajpa.modules.jparelation.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.*;

/**
 * 文章
 *
 *
 * 注意：在JPA中，一般只在一方注明关系类型（1:1 1:n m:n）,对于1:1，m:n写在哪方都可以。
 * 实践：实践上，都把维护关系的注解写在“少”的那一方。比如A表和B表有关系，B表还和其他表有关系，则把A和B表之间的关系描述在A表的Entity上。
 *
 * @author liuyang
 * @scine 2021/6/25
 */
@Entity
@Table(name = "rarticle")
@Data
@ToString(exclude = {"rArticleData", "commentList", "categories"})
@EqualsAndHashCode // 注意：必须加上exclude = "rArticleData"，否则会StackOverflowError
public class RArticle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer aid;

    private String author;

    private Date createTime;

    private String title;

    // 1:1
    /**
     * @OneToOne
     * 因为选择了再RArticleData实体上维护双方的关系，所以需要声明以告知框架。
     * mappedBy: 填写当前类在对方类上的属性名
     * cascade: 级联操作类型（如果不设置会让底层Hibernate迷惑）
     */
    @OneToOne(mappedBy = "rArticle", cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)// 表间关系。
    private RArticleData rArticleData;

    // 1:n
    /**
     * @OneToMany
     */
    @OneToMany(mappedBy = "rArticle", cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)// 表间关系
    private List<RArticleComment> commentList;

    // m:n
    /**
     * @ManyToMany
     */
    @ManyToMany(mappedBy = "rArticleList")// 表间关系
    private List<RArticleCategory> categoryList;
}
