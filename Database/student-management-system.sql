
CREATE DATABASE schoolnew1;

USE schoolnew1;

CREATE TABLE attendance (
    sid INT NOT NULL,
    date DATE NOT NULL,
    aid INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE attendancereport (
    aid INT NOT NULL,
    sid VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    PRIMARY KEY (aid, sid)
);

CREATE TABLE classroom (
    hno VARCHAR(50) PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    capacity INT NOT NULL
);

CREATE TABLE exam (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(50) NOT NULL,
    teacher VARCHAR(50) NOT NULL,
    classroom VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    stime TIME NOT NULL,
    etime TIME NOT NULL
);

CREATE TABLE examresult (
    exam INT NOT NULL,
    student VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    grade VARCHAR(10) NOT NULL,
    PRIMARY KEY (exam, student)
);

CREATE TABLE notice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    notice VARCHAR(1500) NOT NULL,
    odience VARCHAR(100) NOT NULL,
    date DATETIME NOT NULL
);

CREATE TABLE parent (
    pid INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    job VARCHAR(50) NOT NULL,
    address VARCHAR(250) NOT NULL,
    gender VARCHAR(25) NOT NULL,
    nic VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE
);

CREATE TABLE schedule (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(50) NOT NULL,
    teacher VARCHAR(50) NOT NULL,
    day VARCHAR(50) NOT NULL,
    stime TIME NOT NULL,
    class VARCHAR(50) NOT NULL,
    etime TIME NOT NULL
);

CREATE TABLE student (
    sid VARCHAR(25) PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    bday DATE NOT NULL,
    address VARCHAR(250) NOT NULL,
    parent INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    classroom VARCHAR(25) NOT NULL,
    email VARCHAR(50) UNIQUE
);

CREATE TABLE subject (
    sid VARCHAR(50) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL
);

CREATE TABLE teacher (
    tid VARCHAR(50) PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    contact VARCHAR(50) NOT NULL,
    bday DATE NOT NULL,
    skill VARCHAR(500) NOT NULL,
    gender VARCHAR(25) NOT NULL,
    email VARCHAR(50) UNIQUE
);

CREATE TABLE user (
    role VARCHAR(50) NOT NULL,
    email VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);
