package liuyang.testdatajpa.modules.jparelation.dao;

import liuyang.testdatajpa.modules.jparelation.entity.RArticleComment;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author liuyang
 * @scine 2021/6/25
 */
public interface RArticleCommentRepository extends JpaRepository<RArticleComment, Integer> {
}
