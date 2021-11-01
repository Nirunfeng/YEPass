package com.yepass.repository.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:35
 */
@Data
@Table(name = "t_subject")
@Entity
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer subId;
    private String subName;
}
