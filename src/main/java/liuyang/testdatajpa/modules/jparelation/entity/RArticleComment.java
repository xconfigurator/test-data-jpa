package liuyang.testdatajpa.modules.jparelation.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;

/**
 * 文章评论
 * 1:n RArticle: RArticleComment
 *
 * @author liuyang
 * @scine 2021/6/25
 */
@Entity
@Table(name = "rarticle_comment")
@Data
@ToString(exclude = "rArticle")// 防止使用的时候循环引用造成StackOverflow
@EqualsAndHashCode
public class RArticleComment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cid;

    private String comment;

    /**
     * @JoinColumn
     * name: 当前表中的外键字段。翻译成ddl就是rarticle_comment.aid
     */
    @ManyToOne
    @JoinColumn(name = "aid", referencedColumnName = "aid", unique = false)
    private RArticle rArticle;
}
