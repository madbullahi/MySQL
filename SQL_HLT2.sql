-- Create a relational database(2tables)of your own choice.It is must be a meaningful/thought out database.
create table patient
(name varchar(25) not null,
last_name varchar(40) not null,
hospital int(10),
id serial(10),
primary_doctor int(10)
);
create a unique index patient_id_uindex
  on patient (id);
alter table patient
add constraint patient_pk
primary key (id);

-- create a table to store doctor information
create a table doctor
(
name varchar(40),
hospital varchar(45),
id serial (20)
);
create unique index doctor_id_uindex
  on doctor (id);
alter table doctor
  add constraint doctor_pk
    primary key (id);

-- create a table to store hospital information
create a table hospital
(
name varchar(40),
id serial(45)
);
create a unique index hospital_id_uindex
  on hospital (id);
alter table hopsital
  add constraint hospital_pk
    primary key(id);

-- Relate the tables through the Primary keys and foreign keys
alter table patient
  add constraint patient_doctor_id_fk
    foreign key (primary_doctor) references doctor(id);

-- link doctor table to hospital table
alter table doctor
  add constraint doctor_hospital_id_fk
    foreign key (hospital) references hospital (id);
	
-- Add information to the hospital, doctor and patient table
insert into hospital(location) values ("UDUTH"
insert into doctor (full_name, department, hospital) values ("Dan Held", "Pathology", 1)
insert into patient(name, age, gender, entry_date, primary_doctor)
values("Roy Harrison", "45", "Male", "01/01/2022",1)
