package liuyang.testdatajpa.modules.jparelation.dao;

import liuyang.testdatajpa.modules.jparelation.entity.RArticleCategory;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author liuyang
 * @scine 2021/6/26
 */
public interface RArticleCategoryRepository extends JpaRepository<RArticleCategory, Integer> {
}
