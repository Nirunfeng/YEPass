package com.yepass.repository;

import com.yepass.repository.entity.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:37
 */
@Repository
public interface ExamRepository extends JpaRepository<Exam,Integer> {

    Exam findByExamName(String examName);
}

