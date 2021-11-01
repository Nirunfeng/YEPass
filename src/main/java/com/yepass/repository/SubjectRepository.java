package com.yepass.repository;

import com.yepass.repository.entity.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:36
 */
@Repository
public interface SubjectRepository extends JpaRepository<Subject,Integer> {

    Subject findBySubName(String subName);
}
