package liuyang.testdatajpa.modules.jpa.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 * @author liuyang
 * @scine 2021/6/18
 */
@Entity
@Table(name = "article")
@Data
@ToString
@EqualsAndHashCode
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer aid;

    private String author;

    private Date createTime;

    private String title;
}
