drop database Editora;

create database Editora;
use Editora;

create table GRAVADORA(
Cod_Gravadora int auto_increment primary key,
Nome_Gravadora varchar(255) not null,
End_Gravadora varchar(255) not null,
Tel_Gravadora varchar(255) not null,
Contato_Gravadora varchar(255) not null,
URl varchar(255) not null
);

create table CD(
Cod_CD Integer primary key,
Nome_CD varchar(60),
Preco_Vendas numeric(14,2),
Data_Lancamento datetime,
CD_indicado integer,
Cod_Gravadora integer,
foreign key (cod_Gravadora) references gravadora (cod_Gravadora)
);

create table MUSICA(
Cod_Musica integer primary key,
Nome_Musica varchar(60),
Duracao numeric(6,2)
);

create table AUTOR(
Cod_Autor int auto_increment primary key,
Nome_Autor varchar(60) not null
);
    
create table FAIXA(
Num_Faixa integer primary key,
Cod_Musica integer,
Cod_CD integer,
foreign key (cod_Musica) references musica (cod_Musica),
foreign key (cod_CD) references cd (cod_CD)
);

create table MUSICA_AUTOR(
Cod_Musica integer,
Cod_Autor integer,
foreign key (Cod_Musica) references MUSICA (Cod_Musica),
foreign key (Cod_Autor) references AUTOR (Cod_Autor)
);

select * from GRAVADORA;
select * from CD;
select * from MUSICA;
select * from AUTOR;
select * from FAIXA;
select * from MUSICA_AUTOR;