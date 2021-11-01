package com.yepass;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EntityScan("com.yepass")
@EnableScheduling
public class YePassApplication {

    public static void main(String[] args) {
        SpringApplication.run(YePassApplication.class, args);
    }

}
