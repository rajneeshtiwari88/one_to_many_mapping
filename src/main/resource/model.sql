
    alter table employee 
       drop 
       foreign key fk_emp_profile;

    alter table employee_address 
       drop 
       foreign key fk_emp_address;

    drop table if exists employee;

    drop table if exists employee_address;

    drop table if exists employee_profile;

    create table employee (
       id varchar(255) not null,
        emp_name varchar(25),
        emp_salary decimal(7,2),
        emp_profile_id varchar(255),
        primary key (id)
    );

    create table employee_address (
       id varchar(255) not null,
        area_name varchar(25),
        country varchar(25),
        first_line varchar(25),
        pincode integer,
        second_line varchar(25),
        state varchar(25),
        emp_address_id varchar(255),
        primary key (id)
    );

    create table employee_profile (
       id varchar(255) not null,
        emp_gender varchar(1),
        emp_qualfication varchar(25),
        primary key (id)
    );

    alter table employee 
       add constraint fk_emp_profile 
       foreign key (emp_profile_id) 
       references employee_profile (id);

    alter table employee_address 
       add constraint fk_emp_address 
       foreign key (emp_address_id) 
       references employee (id);
