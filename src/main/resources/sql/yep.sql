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
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');
insert into exam (examname, type, tid, entrytime, examtime)  values('考研','考研考博类',001,'9-10月','1月');

