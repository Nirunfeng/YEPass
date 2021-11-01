package com.yepass.task;

import com.yepass.util.PageDownloadUtil;
import org.springframework.scheduling.annotation.Scheduled;
import us.codecraft.webmagic.Spider;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description 爬虫任务
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:39
 */
public class SpiderTask {

    public static String url="https://www.exam8.com/kaoshishijian";

    @Scheduled(cron = "0 0 0 * * ?")
    public void getSpiderContent(){
        Spider.create(new PageDownloadUtil()).addUrl("https://www.exam8.com/kaoshishijian").thread(5).run();
    }
}
