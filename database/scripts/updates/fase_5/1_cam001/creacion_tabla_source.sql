create table tbl_source
(
    source_id int not null auto_increment,
    description varchar(100) not null,
    key_word varchar(100) not null,
    value varchar(100)  null,
    primary key(source_id)
);