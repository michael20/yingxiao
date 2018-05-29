/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     2018/05/29/星期二 9:43:53                       */
/*==============================================================*/


if exists(
   select 1 from sys.systable 
   where table_name='cost_record'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table cost_record
end if;

if exists(
   select 1 from sys.systable 
   where table_name='type'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table type
end if;

if exists(
   select 1 from sys.systable 
   where table_name='user'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table "user"
end if;

/*==============================================================*/
/* Table: cost_record                                           */
/*==============================================================*/
create table cost_record 
(
   id                   int                            not null,
   user_id              int                            null,
   used_year            int                            null,
   used_month           int                            null,
   consumption          double                         null,
   sum                  decimal                        null,
   del_flag             int                            null,
   remark               varchar(100)                   null,
   constraint PK_COST_RECORD primary key clustered (id)
);

comment on table cost_record is 
'电费记录';

/*==============================================================*/
/* Table: type                                                  */
/*==============================================================*/
create table type 
(
   id                   int                            not null,
   name                 varchar(20)                    null,
   price                decimal                        null,
   paraent_id           int                            null,
   constraint PK_TYPE primary key clustered (id)
);

comment on table type is 
'用电类别';

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table user 
(
   id                   int                            not null,
   name                 varchar(20)                    null,
   tel                  varchar(11)                    null,
   addr                 varchar(100)                   null,
   type_id              int                            null,
   del_flag             int                            null,
   remark               varchar(100)                   null,
   constraint PK_USER primary key clustered (id)
);


comment on table "user" is 
'user info';

