create table person(
    num number, --�ּ�
    name varchar2(20),
    BIRTH VARCHAR2(20),
    TEl VarChar2(20),
    primary key(num) --������ ��(�ߺ��� ������� �ʴ´�)
    
);

desc person; --���̺� ������ȸ
insert into person values(1000, '�谳��','9000','010101');
insert into person values(1001, '�谳��','9000','010101');
-- �ּ�, �̸�, ����, ��ȣ
insert into person(num,name,birth,tel)
    values(1002, '�谳��','9000','010101');

insert into person values (1003);
insert into person(num) values(1003);
        
desc person;
select * from person; --�ش� ���̺� ��� �ڷ���ȸ
select num, name from person; --���ϴ� �÷��� ��ȸ ����

SELECT * FROM PERSON WHERE NAME = '�谳��'; --Ư�� �ڷ� ��ȸ
SELECT * FROM PERSON WHERE num = 1001;

delete from person;

SELECT* FROM person;

insert into person values(1000, '�谳��','9000','010101');
insert into person values(1001, '�谳��','9000','010101');
-- �ּ�, �̸�, ����, ��ȣ
insert into person(num,name,birth,tel)
    values(1002, 'ȫ�浿','9000','010101');
    
SELECT* FROM person;
delete from person where num = 1002;
SELECT* FROM person;

update person set name='�����' , tel = 'aaaa' where num = 1000; -- ����
select * from person;

commit; --�Ϻ��� DB�� �����Ѵ�

SELECT
    *
FROM person;

SELECT
    *
FROM person;

insert into person values(1000, '�谳��','9000','010101');

SELECT
    *
FROM person;

rollback; -- Ŀ�Ե� �������� �ǵ�����

select * From person;

insert into person values(1000, '�谳��','9000','010101');
insert into person values(1001, 'ȫ�浿','9000','010101');
insert into person values(1002, '�����','9000','010101');

select * From person;

commit;

rollback;

select * from person;

delete from person;

select * from person;

rollback;
select * from person;

-- commit , rollback : ����Ǵ� �����Ϳ� ���ؼ��� ����ȴ�
-- ���̺� ���� �Ǵ� �÷� ���� �� �⺻ Ʋ�� ���ؼ��� ������� �ʴ´�

-- alter table ���̺� �� add �÷��� : �÷� �߰�
-- alter table ���̺� �� modify �÷��� : �÷� ����
-- alter table ���̺� �� drop �÷��� : �÷� ����

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
    num_ps number(5,2), -- ��ü �ڸ��� 5, �Ҽ��� 2�ڸ�
    num_p number(3), -- ���� �ڸ��� 3
    num NUMBER -- ���� �Ǽ� ����
);

insert into test_number values(1.12345, 1.12345, 1.12345);

select * from test_number;

insert into test_number values(123.12345, 1.12345, 1.12345);

select * from test_number;

create table test_date(my_date date);

insert into test_date values(sysdate); --���� �ý��� ��¥
insert into test_date values('2023/07/03');

select * from test_date;

alter session set nls_date_format = 'YYYY/MM/DD HH24:MI:SS';

select * from test_date;
insert into test_date values('2023/07/03 12:12:12');
select * from test_date;

select * from test_date where my_date < '2023/07/03 12:12:12';
select * from test_date where my_date < '2023/07/04';



--salary : ����
-------------------------------------------------------
create table employee(
name varchar2(15),
salary number,
job varchar2(20),
join_company date
);
insert into employee values('ȫ�浿',2000000,'��ǻ��','2222/12/24');
select * from employee;
alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;





insert into employee values('����ġ',1800000,'�Ｚ','2017/10/24');
insert into employee values('�ι�Ʈ',1850000,'����','2019/01/04');
insert into employee values('����',2200000,'����','2017/11/06');
insert into employee values('�谳��',2500000,'SK','2017/04/14');
insert into employee values('�����',2410000,'������','2018/01/09');
insert into employee values('����',1900000,'�Ｚ','2019/10/24');
insert into employee values('�Ҹ�',1800000,'����','2019/12/04');
insert into employee values('�ɽ���',4630000,'����','2015/04/02');
insert into employee values('�����',2770000,'SK','2017/01/24');
insert into employee values('�ո���',3650000,'������','2016/08/04');
insert into employee values('�Ӹ���',4210000,'�Ｚ','2015/03/18');
insert into employee values('������',2720000,'����','2017/01/04');
insert into employee values('��ġ��',4320000,'����','2015/06/07');
insert into employee values('�ȱ��',3490000,'SK','2015/09/07');
insert into employee values('��¯',2200000,'������','2017/05/04');
insert into employee values('����',1920000,'�Ｚ','2018/11/24');
insert into employee values('���',3420000,'����','2016/07/29');
insert into employee values('������',1800000,'����','2018/12/24');
insert into employee values('������',2230000,'SK','2018/01/05');
insert into employee values('�Ұ��',1800000,'������','2019/01/09');
insert into employee values('¥���',2100000,'�Ｚ','2017/10/24');
insert into employee values('�Ұ�â',2200000,'����','2017/11/04');
insert into employee values('���̽�',1950000,'����','2017/10/24');
insert into employee values('����',1800000,'SK','2018/10/24');
insert into employee values('������',1800000,'������','2019/12/07');
insert into employee values('�ϰ��',1880000,'�Ｚ','2018/11/14');
insert into employee values('���̽�',1970000,'����','2019/06/04');
insert into employee values('�ڵ���',7200000,'����','2010/01/27');
insert into employee values('�򽺺�',3570000,'SK','2015/02/17');
insert into employee values('�����',3200000,'������','2015/11/24');
insert into employee values('���̴�',2400000,'�Ｚ','2017/09/26');
insert into employee values('�踻��',7000000,'����','2010/01/21');
insert into employee values('������',6230000,'����','2011/08/19');

insert into employee values('������',3710000,'SK','2015/08/19');
insert into employee values('ȭ����',1770000,'������','2019/04/28');
insert into employee values('��ȭ��',1920000,'�Ｚ','2019/10/07');
insert into employee values('��ȿ��',2670000,'����','2017/11/24');
insert into employee values('�Ǻ���',3120000,'����','2016/05/19');
insert into employee values('�����',4190000,'SK','2015/01/02');
insert into employee values('������',4280000,'������','2015/01/02');
insert into employee values('���߱�',3700000,'�Ｚ','2016/02/17');
insert into employee values('��ȫ��',2220000,'����','2018/02/04');
insert into employee values('������',2760000,'����','2017/10/14');
insert into employee values('��â��',2620000,'SK','2017/09/04');
insert into employee values('���ڶ�',2500000,'������','2017/11/20');
insert into employee values('�߽���',1970000,'�Ｚ','2017/10/30');
insert into employee values('����',  2720000,'����','2018/11/11');
insert into employee values('������',2600000,'����','2015/11/19');
insert into employee values('������',5670000,'SK','2017/10/16');
insert into employee values('��ȿ��',3750000,'������','2015/09/15');
insert into employee values('��ä��',3400000,'�Ｚ','2016/02/09');
insert into employee values('�ְ��',8900000,'����','2010/01/04');
insert into employee values('��ȭ��',1860000,'����','2017/10/24');
insert into employee values('���빮',1790000,'SK','2017/10/24');
insert into employee values('���빮',2880000,'������','2016/02/27');
insert into employee values('�����',2320000,'�Ｚ','2016/05/24');
insert into employee values('������',1780000,'����','2019/01/09');
insert into employee values('���ҹ�',2900000,'����','2016/10/22');
insert into employee values('���ʿ�',3000000,'SK','2015/10/10');
insert into employee values('���ѱ�',3200000,'������','2015/11/11');
insert into employee values('���ѱ�',2500000,'�Ｚ','2016/12/19');
insert into employee values('¥����',1850000,'����','2018/04/03');
insert into employee values('�̽±�',1900000,'����','2018/01/01');
insert into employee values('������',1790000,'SK','2018/05/02');
insert into employee values('��Ÿ�',2700000,'������','2016/07/20');

select * from employee;
select *from employee where name like '��%'; -- ������ �����ϴ� ��� ��
select *from employee where name like '%��'; -- ������ ������ ��� ��
select *from employee where name like '%��%'; -- �̰� ����ִ� ��� ��

select * from employee order by join_company desc; -- ��������
select * from employee order by join_company asc; -- ��������
-- join�� ������������ ���� ����� name�� ������������
select * from employee order by job asc, salary desc;






























































    