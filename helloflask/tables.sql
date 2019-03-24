create table User(
`user_no` int(11) primary key NOT NULL AUTO_INCREMENT,
`email` varchar(200) DEFAULT NULL,
`password` varchar(256) NOT NULL,
`name` varchar(60) not Null,
`phone_number` varchar(31) DEFAULT NULL,
`nickname` varchar(31) NOT NULL,
`address` varchar(200) DEFAULT NULL
);

create table Board(
	board_id int auto_increment primary key,
    board_title varchar(255),
    due_date date,
    qualification tinyint,
    gen tinyint,
    money int,
    practice_time tinyint,
    perform_time tinyint,
    costume tinyint,
    practice_address varchar(255),
    perform_address varchar(255),
    detail_info varchar(2047),
    song_info varchar(1023),
    user_id int,
    upload_time timestamp default current_timestamp
);


create table Instrument (
	instrument_id int auto_increment primary key,
    instrument_name varchar(63) 
);

create table BoardInstrument (
	id int auto_increment primary key,
    board_id int,
    instrument_id int,
    person tinyint
);



insert into Instrument (instrument_name) values("Conductor");