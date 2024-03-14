create database db_teacherNotes;
use database db_teacherNotes;
create table tb_cadastro_verification(
    id_people int auto_increment primary key,
    nm_email varchar(150) not null,
    cd_password varchar(50) not null
);

create table tb_cadastro_user(
    id_user int auto_increment primary key,
    nm_nameUser varchar(110) not null,
    cd_password varchar(15) not null,
    constraint fk_tb_cadastro foreign key(id_user) references tb_cadastro_verification(id_people)
    /* A tabela "tb_cadastro_user" precisa pegar o valor da "id" da tabela "tb_cadastro_verification" */
    /* The table "tb_cadastro_user" need to catch the value of "id" in table "tb_cadastro_verification" */
);