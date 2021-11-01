package com.yepass.util;

import com.yepass.repository.ExamRepository;
import com.yepass.repository.SubjectRepository;
import com.yepass.repository.entity.Exam;
import com.yepass.repository.entity.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

/**
 * TODO
 *
 * @author Ni runfeng
 * @description
 * @email 2570034697@qq.com
 * @date 2021/11/1 21:38
 */
@Component
public class PageDownloadUtil implements PageProcessor {
    public static PageDownloadUtil pageDownloadUtil;

    private Site site = Site.me().setRetryTimes(3).setSleepTime(100).setCharset("GBK");

    @Autowired
    private SubjectRepository subjectRepository;

    @Autowired
    private ExamRepository examRepository;


    @PostConstruct
    public void init() {
        pageDownloadUtil = this;
        pageDownloadUtil.subjectRepository = this.subjectRepository;
        pageDownloadUtil.examRepository=this.examRepository;
    }

    @Override
    public void process(Page page) {
        /*获取学科分类标题*/
        List<String> cources = page.getHtml().xpath("//*[@class=\"course\"]/li/dl/dt/span/text()").all();
        List<Subject> subjects = new ArrayList<>();
        for (String cource : cources) {
            Subject subject = pageDownloadUtil.subjectRepository.findBySubName(cource);
            if (subject == null) {
                subject=new Subject();
                subject.setSubName(cource);
                subjects.add(subject);
            }
        }
        pageDownloadUtil.subjectRepository.saveAll(subjects);

        subjects.clear();
        subjects = pageDownloadUtil.subjectRepository.findAll();
        for(Subject subject:subjects){
            List<String> exams=page.getHtml().xpath("//*[@class=\"course\"]/li["+subject.getSubId()+"]/dl/dd/a/text()").all();
            for (String examName:exams){
                Exam exam=pageDownloadUtil.examRepository.findByExamName(examName);
                if(exam==null) {
                    exam=new Exam();
                    exam.setExamName(examName);
                    exam.setRelativeSubId(subject.getSubId());
                    pageDownloadUtil.examRepository.save(exam);
                }
            }
        }
    }

    @Override
    public Site getSite() {
        return site;
    }

//    public static void main(String[] args) {
//        Spider.create(new PageDownloadUtil()).addUrl("https://www.exam8.com/kaoshishijian").thread(5).run();
//    }
}

