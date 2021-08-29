/*创建考试类别表*/
/*该表共有两个属性，id主键，type类别*/
create table if not exists examtype (
    id          integer(3)          not null    primary key         auto_increment      comment '主键',
    type       varchar(20)      not null    default ''
    );

/*创建考试科目表*/
/*该数据表有以下属性。id：主键   examname：考试名称   type：考试类别   tid：类别id(外键)    entrytime：报名时间      examtime：考试时间*/
create table if not exists  exam (
    id          integer(3)          not null            primary key             auto_increment          comment '主键',
    examname        varchar(30)             not null            default '',
    type                    varchar(20)             not null            default '' ,
    tid                     integer(3)                  not null            references  examtype(id),
    entrytime           varchar(30)             not null ,
    examtime            varchar(30)             not null
    );

insert into examtype (id, type)  values (001,'考研考博类');
insert into examtype (id, type)  values (null,'保险类');
insert into examtype (id, type)  values (null,'英语类');
insert into examtype (id, type)  values (null,'证券类');
insert into examtype (id, type)  values (null,'财会类');
insert into examtype (id, type)  values (null,'计算机类');
insert into examtype (id, type)  values (null,'精算师');
insert into examtype (id, type)  values (null,'金融类');
insert into examtype (id, type)  values (null,'管理类');
insert into examtype (id, type)  values (null,'心理类');
insert into examtype (id, type)  values (null,'工程类');
insert into examtype (id, type)  values (null,'医学类');
insert into examtype (id, type)  values (null,'学历类');
insert into examtype (id, type)  values (null,'国家职业资格考试');
insert into examtype (id, type)  values (null,'统计类');
insert into examtype (id, type)  values (null,'法学类');
insert into examtype (id, type)  values (null,'新闻出版类');
insert into examtype (id, type)  values (null,'外贸类');
insert into examtype (id, type)  values (null,'经济师');
insert into examtype (id, type)  values (null,'秘书类');

insert into exam (examname, type, tid, entrytime, examtime)  values('考研（公共课、专业课）','考研考博类',001,'9,10','1');
insert into exam (examname, type, tid, entrytime, examtime)  values('保险代理人','保险类',002,'1,2,3,4,5,6,7,8,9,10,11,12','1,2,3,4,5,6,7,8,9,10,11,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('保险公估人','保险类',002,'1,2,3,4,5,6,7,8,9,10,11,12','1,2,3,4,5,6,7,8,9,10,11,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('保险经纪人','保险类',002,'1,2,3,4,5,6,7,8,9,10,11,12','1,2,3,4,5,6,7,8,9,10,11,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('雅思','英语类',003,'1,2,3,4,5,6,7,8,9,10,11,12','1,2,3,4,5,6,7,8,9,10,11,12');

insert into exam (examname, type, tid, entrytime, examtime)  values('证券从业资格','证券类',004,'1,4,6,10','3,6,9,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('期货从业资格','证券类',004,'3,4,6,8,10','4,5,7,9,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('英语专业八级','英语类',003,'11,12','3');
insert into exam (examname, type, tid, entrytime, examtime)  values('医学考博英语','考研考博类',001,'10','3');

insert into exam (examname, type, tid, entrytime, examtime)  values('全国英语等级(PETS)','英语类',003,'1,6','3,9');
insert into exam (examname, type, tid, entrytime, examtime)  values('市会计从业','财会类',005,'10','3');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国计算机等级考试(一级)','计算机类',006,'1,11,12','3');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国计算机等级考试(二级)','计算机类',006,'1,11,12','3');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国计算机等级考试(三级)','计算机类',006,'1,11,12','3');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国计算机等级考试(四级)','计算机类',006,'1,11,12','3');
insert into exam (examname, type, tid, entrytime, examtime)  values('中国精算师','精算师',007,'6','4，9');
insert into exam (examname, type, tid, entrytime, examtime)  values('英语专业四级','英语类',003,'11,12','4');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国大学生英语竞赛(C类)','英语类',003,'1,2,3','4,5');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国职称外语','英语类',003,'10','3,4');


insert into exam (examname, type, tid, entrytime, examtime)  values('银行从业资格','金融类',008,'3,8','5,10');
insert into exam (examname, type, tid, entrytime, examtime)  values('国家理财规划师(ChFP)','金融类',008,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('剑桥商务英语证书(BEC)','英语类',003,'1,2,3,7,8,9','5,6,11,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('全国翻译专业资格(水平)考试','英语类',003,'各地不同','5,11');

insert into exam (examname, type, tid, entrytime, examtime)  values('企业人力资源管理师(二级)','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('企业人力资源管理师(三级)','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('企业人力资源管理师(四级)','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('营销师(一级)','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('营销师(二级)','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('[中物联]助理物流师','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('[中物联]物流师','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('[中物联]高级物流师','管理类',009,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('心理咨询师(三级)','心理类',010,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('心理咨询师(二级)','心理类',010,'3,9','5,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('初级会计职称(助理会计师)','财会类',005,'9,10,11','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('中级会计职称(会计师)','财会类',005,'9,10,11','5');

insert into exam (examname, type, tid, entrytime, examtime)  values('监理工程师(建设部)','工程类',011,'12','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('一级建筑师','工程类',011,'2,3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('二级建筑师','工程类',011,'2,3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('环境影响评价工程师','工程类',011,'12,1,2','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('执业护士','医学类',012,'12','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('护师','医学类',012,'12','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('主管护师','医学类',012,'12','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历申硕英语','学历类',013,'3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历申硕法学','学历类',013,'3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历申硕工商管理','学历类',013,'3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历申硕管理科学与工程','学历类',013,'3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历申硕教育学','学历类',013,'3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历申硕心理学','学历类',013,'3','5');
insert into exam (examname, type, tid, entrytime, examtime)  values('同等学历经济学','学历类',013,'4','5');


insert into exam (examname, type, tid, entrytime, examtime)  values('证券公司合规管理人员胜任能力','证券类',004,'5','6');
insert into exam (examname, type, tid, entrytime, examtime)  values('金融英语证书','金融类',008,'3,4','6');
insert into exam (examname, type, tid, entrytime, examtime)  values('金融英语证书','金融类',008,'3,4','6');
insert into exam (examname, type, tid, entrytime, examtime)  values('特许金融分析师(CFA)','金融类',008,'9,10,11,12,1,2,3','6');
insert into exam (examname, type, tid, entrytime, examtime)  values('大学英语四级','英语类',003,'3,4,8,10','6,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('大学英语六级','英语类',003,'3,4,8,10','6,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('高等学校英语应用能力','英语类',003,'4,10','6,12');
insert into exam (examname, type, tid, entrytime, examtime)  values('社会工作师(初级)','国家职业资格考试',014,'12,1','6');
insert into exam (examname, type, tid, entrytime, examtime)  values('社会工作师(中级)','国家职业资格考试',014,'12,1','6');
insert into exam (examname, type, tid, entrytime, examtime)  values('省会计从业','财会类',005,'时间不定','6,11');
insert into exam (examname, type, tid, entrytime, examtime)  values('注册税务师','财会类',005,'12','6');

insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');

