package com.yepass.repository.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:36
 */
@Data
@Table(name = "t_exam")
@Entity
public class Exam {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer examId=1;
    private String examName;
    private Integer relativeSubId;
}
