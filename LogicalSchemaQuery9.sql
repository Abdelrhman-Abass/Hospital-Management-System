use HospitalSystem;

Create table Patientinfo
(
pat_id integer,
pat_name varchar(20) not null,
pat_fname varchar(20) not null,
date_of_birth date not null,
pat_gender char(1) not null check(pat_gender in ('M','F')),
pat_street_address varchar(30) not null,
pat_city varchar(15) not null,
pat_state varchar(15) not null,
pat_country varchar(15) not null,
pat_postal_code varchar(8) not null,
pat_contact varchar(15) not null,
pat_weight integer not null,
other_det varchar(30),
pat_reg_date DATETIME not null,
primary key(pat_id)
);
create index pat_date on Patientinfo(pat_reg_date);


Create table Doc_design
(
designation varchar(10),
salary decimal(10,2) not null check(salary>50000),
doc_charge integer not null,
primary key(designation)
);


Create table Doctorinfo
(
doc_id integer,
doc_name varchar(20) not null,
doc_fname varchar(20) not null,
doc_gender char(1) not null check(doc_gender in ('M','F')),
doc_street_address varchar(30) not null,
doc_city varchar(15) not null,
doc_state varchar(15) not null,
doc_country varchar(15) not null,
doc_postal_code varchar(8) not null,
doc_conatct varchar(15) not null,
designation varchar(10) not null check(designation in
('Jr','Sr','Surgeon','Assistant','Specialist')),
primary key(doc_id),
foreign key(designation) references Doc_design(designation) on delete cascade on update
cascade
);
create index design on Doctorinfo(designation);


Create table Staff_dept_charge
(
dept_name varchar(10) not null,
staff_charge integer not null,
primary key(dept_name)
);


Create table Staffinfo
(
staff_id integer,
staff_Name varchar(20) not null,
staff_fname varchar(20) not null,
dept_name varchar(10) not null,
staff_gender char(1) not null check(staff_gender in ('M','F')),
staff_street_address varchar(30) not null ,
staff_city varchar(15) not null,
staff_state varchar(15) not null,
staff_country varchar(15) not null,
staff_postal_code varchar(8) not null,
staff_contact varchar(10) not null,
primary key(staff_id),
foreign key(dept_name) references Staff_dept_charge(dept_name) on delete cascade on
update cascade
);

Create table Doc_Staff
(
doc_id integer not null,
staff_id integer not null,
primary key(doc_id,staff_id),
foreign key(doc_id) references Doctorinfo(doc_id) on delete cascade,
foreign key (staff_id) references Staffinfo(staff_id) on delete cascade
);


CREATE TABLE Labinfo
(
    lab_id INTEGER,
    lab_rep_weight INTEGER NOT NULL,
    lab_rep_date DATETIME NOT NULL UNIQUE,
    diag_details VARCHAR(50) NOT NULL,
    remark VARCHAR(50),
    other VARCHAR(100),
    lab_charge INTEGER NOT NULL,
    PRIMARY KEY(lab_id)
);


CREATE TABLE Assist
(
    lab_id INTEGER NOT NULL,
    pat_id INTEGER NOT NULL,
    doc_id INTEGER NOT NULL,
    lab_rep_date DATETIME NOT NULL,
    PRIMARY KEY(lab_id, pat_id, doc_id),
    FOREIGN KEY(lab_id) REFERENCES Labinfo(lab_id),
    FOREIGN KEY(doc_id) REFERENCES Doctorinfo(doc_id),
    FOREIGN KEY(pat_id) REFERENCES Patientinfo(pat_id),
    FOREIGN KEY(lab_rep_date) REFERENCES Labinfo(lab_rep_date)
);


Create table Roomcharge
(
room_type varchar(7),
room_charge integer not null,
primary key(room_type)
);


Create table Roominfo
(
room_num integer,
room_type varchar(7) not null check(room_type in ('Single','Duplex','Triplex','Common')),
tot_beds integer not null,
num_beds_occupd integer not null,
status varchar(8) not null check(status in ('vacant','occupied')),
floor_num integer not null,
primary key(room_num),
foreign key(room_type) references Roomcharge(room_type) on delete cascade on update
cascade
);
create index room_typ on Roominfo(room_type);
create index stats on Roominfo(status);


CREATE TABLE Inpatientinfo
(
    room_num integer NOT NULL,
    pat_id integer NOT NULL,
    adm_disch_date DATETIME NOT NULL,
    adm_disch_flag char(1) NOT NULL check(adm_disch_flag in ('A','D')),
    num_of_days integer NOT NULL,
    PRIMARY KEY(room_num, pat_id, adm_disch_date, adm_disch_flag),
    FOREIGN KEY(room_num) REFERENCES Roominfo(room_num) ON DELETE CASCADE,
    FOREIGN KEY(pat_id) REFERENCES Patientinfo(pat_id) ON DELETE CASCADE
);


Create table Outpatientinfo
(
pat_id integer not null,
out_pat_date DATETIME not null,
primary key(pat_id,out_pat_date),
foreign key(pat_id) references Patientinfo(pat_id) on delete cascade on update cascade
);


Create table Medicalcharge
(
bill_id integer,
doc_charge integer not null,
lab_charge integer not null,
staff_charge integer not null,
med_charge integer default 0,
operation_charge integer default 0,
room_charge integer not null,
bill_datetime DATETIME not null,
primary key(bill_id)
);create index bill_dt on Medicalcharge(bill_datetime);


Create table Bill_Pat
(
bill_id integer not null,
pat_id integer not null,
primary key(bill_id,pat_id),
foreign key(bill_id) references Medicalcharge(bill_id) on delete cascade,
foreign key(pat_id) references Patientinfo(pat_id) on delete cascade
);


Create table Schedinfo
(
app_id integer,
pat_id integer not null,
doc_id integer not null,
app_date date not null,
app_datetime datetime not null,
primary key(app_id,pat_id,doc_id),
foreign key(pat_id) references Patientinfo(pat_id) on delete cascade,
foreign key(doc_id) references Doctorinfo(doc_id) on delete cascade
);