create table approval (
   bno number,
   app_profile varchar2(200),
   app_resume varchar2(200),
   app_gender varchar2(20),
   app_phone1 varchar2(20),
   app_phone2 varchar2(20),
   app_phone3 varchar2(20),
   app_email varchar2(100),
   app_addr1 varchar2(50),
   app_addr2 varchar2(100),
   app_addr3 varchar2(50)
);

select * from approval;

drop table approval purge;
