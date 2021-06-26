package liuyang.testdatajpa.modules.jparelation.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

import javax.persistence.*;
import java.util.*;

/**
 * 文章类型
 * m:n  RArticle:RArticleCategory
 *
 * @author liuyang
 * @scine 2021/6/26
 */
@Entity
@Table(name = "rarticle_category")
@Data
@ToString(exclude = "articleList")
@EqualsAndHashCode
public class RArticleCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer tid;

    private String name;

    // 维护关系的注解写在与其他表关系“少”的一方
    /**
     * @JoinTable
     * name:                中间表名称
     * joinColumns：        中间表与当前表的关系
     *      name: 中间表的外键
     *      referencedColumnName: 当前表的主键
     * inverseJoinColumns：重点表与对方表的关系
     *      name: 中间表的外键
     *      referencedColumnName: 对方表的主键
     */
    @ManyToMany
    @JoinTable(
            name = "rarticle_rarticlecategory",
            joinColumns = {@JoinColumn(name = "tid", referencedColumnName = "tid")},
            inverseJoinColumns = {@JoinColumn(name = "aid", referencedColumnName = "aid")}
    )
    private List<RArticle> rArticleList;
}
