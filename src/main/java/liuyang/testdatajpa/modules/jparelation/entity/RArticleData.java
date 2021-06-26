package liuyang.testdatajpa.modules.jparelation.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;

/**
 * 文章数据
 * 1:1 RArticle:RArticleData
 *
 * @author liuyang
 * @scine 2021/6/25
 */
@Entity
@Table(name = "rarticle_data")
@Data
@ToString(exclude = "rArticleData")
@EqualsAndHashCode
public class RArticleData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String content;

    // 维护关系的注解写在与其他表关系“少”的一方
    /**
     * 关于@JoinColumn注解的属性
     * name: 当前表中的外键名,注意要驼峰标识。 (翻译到表上就是：rarticle_data.article_id)
     * referenceColumnName: 指向表中的主键名称
     */
    @OneToOne
    @JoinColumn(name = "articleId", referencedColumnName = "aid", unique = true)// 1:1中 unique=true不能省略
    private RArticle rArticle;
}
