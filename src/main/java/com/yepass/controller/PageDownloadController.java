package com.yepass.controller;

import com.yepass.util.PageDownloadUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import us.codecraft.webmagic.Spider;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:40
 */
@RestController
public class PageDownloadController {
    @GetMapping("/test")
    public String test(){
        Spider.create(new PageDownloadUtil()).addUrl("https://www.exam8.com/kaoshishijian").thread(5).run();
        return "success";
    }
}
