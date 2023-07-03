create table person(
    num number, --주석
    name varchar2(20),
    BIRTH VARCHAR2(20),
    TEl VarChar2(20),
    primary key(num) --유일한 값(중복을 허용하지 않는다)
    
);

desc person; --테이블 형식조회
insert into person values(1000, '김개똥','9000','010101');
insert into person values(1001, '김개똥','9000','010101');
-- 주소, 이름, 생일, 번호
insert into person(num,name,birth,tel)
    values(1002, '김개똥','9000','010101');

insert into person values (1003);
insert into person(num) values(1003);
        
desc person;
select * from person; --해당 테이블 모든 자료조회
select num, name from person; --원하는 컬럼만 조회 가능

SELECT * FROM PERSON WHERE NAME = '김개똥'; --특정 자료 조회
SELECT * FROM PERSON WHERE num = 1001;

delete from person;

SELECT* FROM person;

insert into person values(1000, '김개똥','9000','010101');
insert into person values(1001, '김개똥','9000','010101');
-- 주소, 이름, 생일, 번호
insert into person(num,name,birth,tel)
    values(1002, '홍길동','9000','010101');
    
SELECT* FROM person;
delete from person where num = 1002;
SELECT* FROM person;

update person set name='김길이' , tel = 'aaaa' where num = 1000; -- 변경
select * from person;

commit; --완벽히 DB에 저장한다

SELECT
    *
FROM person;

SELECT
    *
FROM person;

insert into person values(1000, '김개똥','9000','010101');

SELECT
    *
FROM person;

rollback; -- 커밋된 순간으로 되돌리기

select * From person;

insert into person values(1000, '김개똥','9000','010101');
insert into person values(1001, '홍길동','9000','010101');
insert into person values(1002, '김길이','9000','010101');

select * From person;

commit;

rollback;

select * from person;

delete from person;

select * from person;

rollback;
select * from person;

-- commit , rollback : 저장되는 데이터에 대해서만 적용된다
-- 테이블 생성 또는 컬럼 변경 등 기본 틀에 대해서는 사용하지 않는다

-- alter table 테이블 명 add 컬럼명 : 컬럼 추가
-- alter table 테이블 명 modify 컬럼명 : 컬럼 수정
-- alter table 테이블 명 drop 컬럼명 : 컬럼 삭제

create table test_table (num number);
desc test_table;
alter table test_table add(name varchar(20));

desc test_table;

alter table test_table modify(name number);

desc test_table;

alter table test_table drop column name;

desc test_table;

alter table test_table rename column num to num_bbb;

desc test_table;

drop table test_table;

select * from student;

select * from student where kor > 90;

select* from student where kor != 100;

select* from student where eng >= 90;

select math/2 from student where id = 'id1';
select math+100 from student where id = 'id1';
select math-100 from student where id = 'id1';

select * from student;
select * from student where kor >=90 and math = 100;
select * from student where kor >=70 or math = 100;
select * from student where not kor = 90;

select * from student;
select * from student where kor >= 90 and kor <=100;
select * from student where kor between 90 and 100;

create table test_number(
    num_ps number(5,2), -- 전체 자리수 5, 소수점 2자리
    num_p number(3), -- 정수 자리수 3
    num NUMBER -- 정수 실수 가변
);

insert into test_number values(1.12345, 1.12345, 1.12345);

select * from test_number;

insert into test_number values(123.12345, 1.12345, 1.12345);

select * from test_number;

create table test_date(my_date date);

insert into test_date values(sysdate); --현재 시스템 날짜
insert into test_date values('2023/07/03');

select * from test_date;

alter session set nls_date_format = 'YYYY/MM/DD HH24:MI:SS';

select * from test_date;
insert into test_date values('2023/07/03 12:12:12');
select * from test_date;

select * from test_date where my_date < '2023/07/03 12:12:12';
select * from test_date where my_date < '2023/07/04';



--salary : 월급
-------------------------------------------------------
create table employee(
name varchar2(15),
salary number,
job varchar2(20),
join_company date
);
insert into employee values('홍길동',2000000,'컴퓨터','2222/12/24');
select * from employee;
alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;





insert into employee values('설까치',1800000,'삼성','2017/10/24');
insert into employee values('로버트',1850000,'애플','2019/01/04');
insert into employee values('고도리',2200000,'엘지','2017/11/06');
insert into employee values('김개똥',2500000,'SK','2017/04/14');
insert into employee values('리우뚱',2410000,'샤오미','2018/01/09');
insert into employee values('강민',1900000,'삼성','2019/10/24');
insert into employee values('할리',1800000,'애플','2019/12/04');
insert into employee values('심심해',4630000,'엘지','2015/04/02');
insert into employee values('놀아줘',2770000,'SK','2017/01/24');
insert into employee values('왕만두',3650000,'샤오미','2016/08/04');
insert into employee values('머리빨',4210000,'삼성','2015/03/18');
insert into employee values('마리오',2720000,'애플','2017/01/04');
insert into employee values('최치우',4320000,'엘지','2015/06/07');
insert into employee values('안깔쌈',3490000,'SK','2015/09/07');
insert into employee values('끝짱',2200000,'샤오미','2017/05/04');
insert into employee values('막장',1920000,'삼성','2018/11/24');
insert into employee values('드라마',3420000,'애플','2016/07/29');
insert into employee values('개똥이',1800000,'엘지','2018/12/24');
insert into employee values('마포구',2230000,'SK','2018/01/05');
insert into employee values('소고기',1800000,'샤오미','2019/01/09');
insert into employee values('짜장면',2100000,'삼성','2017/10/24');
insert into employee values('소곱창',2200000,'애플','2017/11/04');
insert into employee values('참이슬',1950000,'엘지','2017/10/24');
insert into employee values('뤼우뚱',1800000,'SK','2018/10/24');
insert into employee values('위메프',1800000,'샤오미','2019/12/07');
insert into employee values('북경시',1880000,'삼성','2018/11/14');
insert into employee values('스미스',1970000,'애플','2019/06/04');
insert into employee values('핸드폰',7200000,'엘지','2010/01/27');
insert into employee values('빅스비',3570000,'SK','2015/02/17');
insert into employee values('노라줘',3200000,'샤오미','2015/11/24');
insert into employee values('사이다',2400000,'삼성','2017/09/26');
insert into employee values('김말이',7000000,'애플','2010/01/21');
insert into employee values('오도독',6230000,'엘지','2011/08/19');

insert into employee values('쌈지돈',3710000,'SK','2015/08/19');
insert into employee values('화장지',1770000,'샤오미','2019/04/28');
insert into employee values('소화기',1920000,'삼성','2019/10/07');
insert into employee values('박효신',2670000,'애플','2017/11/24');
insert into employee values('판빙빙',3120000,'엘지','2016/05/19');
insert into employee values('김재욱',4190000,'SK','2015/01/02');
insert into employee values('송혜교',4280000,'샤오미','2015/01/02');
insert into employee values('송중기',3700000,'삼성','2016/02/17');
insert into employee values('손홍민',2220000,'애플','2018/02/04');
insert into employee values('백종원',2760000,'엘지','2017/10/14');
insert into employee values('오창석',2620000,'SK','2017/09/04');
insert into employee values('스텔라',2500000,'샤오미','2017/11/20');
insert into employee values('멕스웰',1970000,'삼성','2017/10/30');
insert into employee values('조현',  2720000,'애플','2018/11/11');
insert into employee values('류현진',2600000,'엘지','2015/11/19');
insert into employee values('은지원',5670000,'SK','2017/10/16');
insert into employee values('전효성',3750000,'샤오미','2015/09/15');
insert into employee values('이채은',3400000,'삼성','2016/02/09');
insert into employee values('최고봉',8900000,'애플','2010/01/04');
insert into employee values('광화문',1860000,'엘지','2017/10/24');
insert into employee values('동대문',1790000,'SK','2017/10/24');
insert into employee values('서대문',2880000,'샤오미','2016/02/27');
insert into employee values('대통령',2320000,'삼성','2016/05/24');
insert into employee values('예지원',1780000,'애플','2019/01/09');
insert into employee values('정소민',2900000,'엘지','2016/10/22');
insert into employee values('워너원',3000000,'SK','2015/10/10');
insert into employee values('북한군',3200000,'샤오미','2015/11/11');
insert into employee values('남한군',2500000,'삼성','2016/12/19');
insert into employee values('짜투리',1850000,'애플','2018/04/03');
insert into employee values('이승기',1900000,'엘지','2018/01/01');
insert into employee values('기차길',1790000,'SK','2018/05/02');
insert into employee values('길거리',2700000,'샤오미','2016/07/20');

select * from employee;
select *from employee where name like '김%'; -- 김으로 시작하는 모든 값
select *from employee where name like '%똥'; -- 똥으로 끝나는 모든 값
select *from employee where name like '%이%'; -- 이가 들어있는 모든 값

select * from employee order by join_company desc; -- 내림차순
select * from employee order by join_company asc; -- 오름차순
-- join운 오름차순으로 나온 결과중 name을 내림차순으로
select * from employee order by job asc, salary desc;






























































    