CREATE TABLE "School"."Student1" (
	"id1" number(18) NOT NULL,
	"id" number(9),
	"name" varchar2(256),
	"age" number(9),
	"aDdress" varchar2(256),
	"height" number,
	"weight" number,
	"ishas" number(1),
	"property2" number(9),
	"property1" varchar2(256),
	"property3" date,
	"property4" time,
	"idCard" number(18),
	PRIMARY KEY ("id1")
);

-- 不带模式名
CREATE TABLE "Student2" (
	"id" number(18) NOT NULL,
	"id444" number(9),
	"property1" varchar2(256),
	"property2" number(9),
	"address" varchar2(256),
	"date" date,
	PRIMARY KEY ("id")
);

CREATE TABLE "School"."Student3" (
	"id" number(18) NOT NULL,
	"e" varchar2(256),
	"createdby" varchar2(256),
	"hgt" varchar2(256),
	"property1" varchar2(256),
	PRIMARY KEY ("id")
);

CREATE TABLE "School"."Student4" (
	"id" number(18) NOT NULL,
	"property1" varchar2(256),
	"property2" number(9),
	"property3" varchar2(256),
	"property4" varchar2(256),
	"property5" varchar2(256),
	PRIMARY KEY ("id")
);


CREATE TABLE "School"."Student5" (
	"id1" number(18) NOT NULL,
	"id" number(9),
	"name" varchar2(256),
	"age" number(9),
	"aDdress" varchar2(256),
	"height" number,
	"weight" number,
	"ishas" number(1),
	"property2" number(9),
	"property1" varchar2(256),
	"property3" date,
	"property4" time,
	"idCard" number(18),
	PRIMARY KEY ("id1")
);

create table "School"."Student6"
(
	"id1" BIGINT not null ,
	"name" VARCHAR2(50) not null ,
	"age" INTEGER,
	"address" VARCHAR(50),
	"pro1Number" NUMERIC(22, 6),
	"pro2Decimal" DECIMAL(22, 6),
	"pro3Float" FLOAT(53),
	"pro4Double" DOUBLE(53),
	"pro5Date" DATE,
	"pro6DateTime" DATETIME(6),
	"pro7Time" TIME(6),
	"pro8Timestamt" TIMESTAMP(6),
	"pro9Text" TEXT,
	primary key("id1")
)
storage(initial 1, next 1, minextents 1, fillfactor 0)
;

CREATE TABLE "School"."Student7"
(
"id1" BIGINT NOT NULL,
"name" VARCHAR2(50) NOT NULL,
"age" INTEGER,
"address" VARCHAR(50),
"pro1Number" NUMERIC(22,6),
"pro2Decimal" DECIMAL(22,6),
"pro3Float" FLOAT,
"pro4Double" DOUBLE,
"pro5Date" DATE,
"pro6DateTime" DATETIME(6),
"pro7Time" TIME(6),
"pro8Timestamt" TIMESTAMP(6),
"pro9Text" TEXT,
NOT CLUSTER PRIMARY KEY("id1")) STORAGE(ON "MAIN", CLUSTERBTR) ;

-- 单主键,主键不叫id
CREATE TABLE "School"."Student8"
(
"id1" BIGINT NOT NULL,
"name" VARCHAR2(50) NOT NULL,
"age" INTEGER,
"address" VARCHAR(50),
CLUSTER PRIMARY KEY("id1")) STORAGE(ON "MAIN", CLUSTERBTR) ;

-- 无主键
CREATE TABLE "School"."Student9" (
	"id" number(18) NOT NULL,
	"id444" number(9),
	"property1" varchar2(256),
	"property2" number(9),
	"address" varchar2(256),
	"date" date
);

-- 表注释、字段注释
CREATE TABLE "School"."Student10"
(
    "id" BIGINT IDENTITY(1, 1) NOT NULL,
    "name" VARCHAR(128),
    "address" VARCHAR(50),
    "gender" VARCHAR(50),
    CLUSTER PRIMARY KEY("id"),
    UNIQUE("id")) STORAGE(ON "MAIN", CLUSTERBTR) ;

COMMENT ON TABLE "School"."Student10" IS '学生表';
COMMENT ON COLUMN "School"."Student10"."id" IS '学生编号';
COMMENT ON COLUMN "School"."Student10"."name" IS '学生姓名';
COMMENT ON COLUMN "School"."Student10"."address" IS '学生地址';

-- 联合主键1
create table "School"."MultiPk1"
(
    "id1" BIGINT identity(1, 1) not null ,
    "id2" BIGINT not null ,
    "name" VARCHAR2(50),
    "age" number(9),
    primary key("id1", "id2")
)storage(initial 1, next 1, minextents 1, fillfactor 0);

-- 联合主键2, 表注释、字段注释
-- 存在bigint类型
create table "School"."MultiPk2"
(
    "accountId1" BIGINT not null ,
    "accountId2" VARCHAR2(128) not null ,
    "name" VARCHAR2(50),
    "age" number(9),
    primary key("accountId1", "accountId2")
);

COMMENT ON TABLE "School"."MultiPk2" IS '联合主键测试表';
COMMENT ON COLUMN "School"."MultiPk2"."accountId1" IS '编号1';
COMMENT ON COLUMN "School"."MultiPk2"."name" IS '姓名';


-- excel
CREATE TABLE "School"."Network58" (
  "id1" number(18) NOT NULL,
  "id" number(9),
  "name" varchar2(256),
  "age" number(9),
  "aDdress" varchar2(256),
  "height" number,
  "weight" number,
  "ishas" number(1),
  "property2" number(9),
  "property1" varchar2(256),
  "property3" date,
  "property4" time,
  "idCard" number(18),
  NOT CLUSTER PRIMARY KEY ("id1")
);
COMMENT ON TABLE "School"."Network58" IS 'Network58';
COMMENT ON COLUMN "School"."Network58"."id" IS 'id';
COMMENT ON COLUMN "School"."Network58"."name" IS 'name';
COMMENT ON COLUMN "School"."Network58"."age" IS 'age';
COMMENT ON COLUMN "School"."Network58"."aDdress" IS 'ADdress';
COMMENT ON COLUMN "School"."Network58"."height" IS 'hei  ght';
COMMENT ON COLUMN "School"."Network58"."weight" IS 'weight';
COMMENT ON COLUMN "School"."Network58"."ishas" IS 'ishas';
COMMENT ON COLUMN "School"."Network58"."property2" IS 'property2';
COMMENT ON COLUMN "School"."Network58"."property1" IS 'null';
COMMENT ON COLUMN "School"."Network58"."property3" IS '日期';
COMMENT ON COLUMN "School"."Network58"."property4" IS '时间';
COMMENT ON COLUMN "School"."Network58"."idCard" IS 'idCard';

CREATE TABLE "School"."Network59" (
  "id" number(18) NOT NULL,
  "id444" number(9),
  "property1" varchar2(256),
  "property2" number(9),
  "address" varchar2(256),
  "date" date,
  NOT CLUSTER PRIMARY KEY ("id")
);
COMMENT ON TABLE "School"."Network59" IS 'Network59';
COMMENT ON COLUMN "School"."Network59"."id444" IS 'id444';
COMMENT ON COLUMN "School"."Network59"."property1" IS 'property1';
COMMENT ON COLUMN "School"."Network59"."property2" IS '#';
COMMENT ON COLUMN "School"."Network59"."address" IS 'Address';
COMMENT ON COLUMN "School"."Network59"."date" IS 'date';

CREATE TABLE "School"."Entity1" (
    "id" number(18) NOT NULL,
    "e1" varchar2(256),
    "createdby" varchar2(256),
    "hgt" varchar2(256),
    "property1" varchar2(256),
    NOT CLUSTER PRIMARY KEY ("id")
);
COMMENT ON TABLE "School"."Entity1" IS 'Entity1';
COMMENT ON COLUMN "School"."Entity1"."e1" IS 'E';
COMMENT ON COLUMN "School"."Entity1"."createdby" IS 'createdby';
COMMENT ON COLUMN "School"."Entity1"."hgt" IS 'Hgt';
COMMENT ON COLUMN "School"."Entity1"."property1" IS '44';

CREATE TABLE "School"."Student11" (
  "id" number(18) NOT NULL,
  "property1" varchar2(256),
  "property2" number(9),
  "property3" varchar2(256),
  "property4" varchar2(256),
  "property5" varchar2(256),
  NOT CLUSTER PRIMARY KEY ("id")
);
COMMENT ON TABLE "School"."Student11" IS 'student';
COMMENT ON COLUMN "School"."Student11"."property1" IS '';
COMMENT ON COLUMN "School"."Student11"."property2" IS '';
COMMENT ON COLUMN "School"."Student11"."property3" IS '';
COMMENT ON COLUMN "School"."Student11"."property4" IS '';
COMMENT ON COLUMN "School"."Student11"."property5" IS '';

CREATE TABLE "School"."Sheet4" (
   "id1" number(18) NOT NULL,
   "id" number(9),
   "name" varchar2(256),
   "age" number(9),
   "aDdress" varchar2(256),
   "height" number,
   "weight" number,
   "ishas" number(1),
   "property2" number(9),
   "property1" varchar2(256),
   "property3" date,
   "property4" time,
   "idCard" number(18),
   NOT CLUSTER PRIMARY KEY ("id1")
);
COMMENT ON TABLE "School"."Sheet4" IS 'Sheet4';
COMMENT ON COLUMN "School"."Sheet4"."id" IS 'id';
COMMENT ON COLUMN "School"."Sheet4"."name" IS 'name';
COMMENT ON COLUMN "School"."Sheet4"."age" IS 'age';
COMMENT ON COLUMN "School"."Sheet4"."aDdress" IS 'ADdress';
COMMENT ON COLUMN "School"."Sheet4"."height" IS 'hei  ght';
COMMENT ON COLUMN "School"."Sheet4"."weight" IS 'weight';
COMMENT ON COLUMN "School"."Sheet4"."ishas" IS 'ishas';
COMMENT ON COLUMN "School"."Sheet4"."property2" IS 'property2';
COMMENT ON COLUMN "School"."Sheet4"."property1" IS 'null';
COMMENT ON COLUMN "School"."Sheet4"."property3" IS '日期';
COMMENT ON COLUMN "School"."Sheet4"."property4" IS '时间';
COMMENT ON COLUMN "School"."Sheet4"."idCard" IS 'idCard';


-- 查询表结构
schname：模式名
tablename：表对象名称
可以通过call调用该存储过程获得表结构定义语句
call SP_TABLEDEF ('School','Student')


GET_DDL函数因其强大的功能可以用于获取数据库所有对象
（包括但不限于表、视图、索引、同义词、触发器、存储过程、函数等）的结构化定义语句。
达梦数据库同样兼容此功能。不同于第二种方式只能够查看表对象的定义语句。
select dbms_metadata.get_ddl('TABLE','Teacher3','School')
》》


-- 新增字段
alter table "School"."Student" add column("address" VARCHAR(50));
comment on column "School"."Student"."address" is '地址';

-- 删除字段
alter table "School"."Student" drop column "address";

-- 修改字段名
alter table "School"."Student" alter column "address" rename to "address1";

-- 修改备注
comment on column "School"."Student"."address" is '学生地址';

select index_name from user_indexes where table_name='Teacher';