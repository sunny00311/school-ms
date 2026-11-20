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


-- Insert sample data

INSERT INTO `attendance` (`sid`, `date`, `aid`) VALUES
(2, '2020-05-25', 3),
(1, '2020-05-30', 4),
(2, '2020-05-02', 5),
(2, '1975-09-17', 6),
(3, '2005-06-30', 7);

INSERT INTO `attendancereport` (`aid`, `sid`, `status`) VALUES
(3, 'ST1000010001', 'Absent'),
(3, 'ST1000010002', 'Present'),
(4, 'ST1000010001', 'Present'),
(4, 'ST1000010002', 'Present');

INSERT INTO `classroom` (`hno`, `title`, `location`, `capacity`) VALUES
('4-B', 'Nilwala', 'Block-D', 50),
('Aute in irure autem ', 'Aut magnam fugiat r', 'Aliquam minim numqua', 12),
('Sunt cillum qui iust', 'Eum hic ipsum ration', 'Ut nostrum laborum ', 48);

INSERT INTO `exam` (`id`, `subject`, `teacher`, `classroom`, `date`, `stime`, `etime`) VALUES
(1, 'SCM4251', 'TC1000020000', '4-B', '2020-05-26', '11:45:00', '12:45:00'),
(2, '', 'Andrew', '4-B', '2022-05-20', '00:00:00', '00:00:00');

INSERT INTO `examresult` (`exam`, `student`, `marks`, `grade`) VALUES
(1, 'Brittany', 44, 'C-'),
(1, 'ST1000010001', 55, 'C+'),
(1, 'ST1000010002', 77, 'A+'),
(2, 'Kiayada', 91, 'C+');

INSERT INTO `notice` (`id`, `notice`, `odience`, `date`) VALUES
(5, 'Ea cum labore illo n', 'Parent', '2022-05-30 10:52:24'),
(6, 'Dolores suscipit qui', 'Select Odience', '2022-05-30 10:52:27');

INSERT INTO `parent` (`pid`, `fname`, `lname`, `contact`, `job`, `address`, `gender`, `nic`, `email`) VALUES
(1, 'Kelly', 'Kelly', '0785566022555', 'Engineer', 'Colombo Road\r\nPilimathalawa.', 'Male', '7855485552V', 'parent@gmail.com'),
(2, 'Natasha', 'Belle', 'Rebecca', 'Alvin', 'Laborum Iure ea nos', 'Female', 'Aladdin', 'qiwip@mailinator.com'),
(3, 'Taylor', 'Swift', 'Roary', 'Price', 'Laborum maiores vel ', 'Male', 'Merrill', 'dabecapywa@mailinator.com');

INSERT INTO `schedule` (`id`, `subject`, `teacher`, `day`, `stime`, `class`, `etime`) VALUES
(1, 'SCM4251', 'TC1000020000', 'Wendsday', '04:15:00', '4-B', '04:15:00'),
(2, 'SCM4251', 'TC1000020000', 'Thursday', '05:30:00', '4-B', '07:45:00'),
(3, 'Voluptatem Consequa', 'Andrew', 'Monday', '01:21:23', '4-B', '00:01:23'),
(4, 'Quas laudantium nem', 'TC1000020000', 'Thursday', '12:31:23', 'Aute in irure autem ', '00:01:23'),
(5, 'Sequi fugiat molliti', 'Andrew', 'Sunday', '00:00:00', 'Select Class Room', '00:00:00'),
(6, '', 'TC1000020000', 'Saturday', '00:00:00', 'Aute in irure autem ', '00:00:00'),
(7, 'Select Subject', 'Andrew', 'Monday', '00:00:00', 'Select Class Room', '00:00:00'),
(8, 'Quaerat illum nesci', 'Andrew', 'Wendsday', '00:00:00', 'Aute in irure autem ', '00:00:00');

INSERT INTO `student` (`sid`, `fname`, `lname`, `bday`, `address`, `parent`, `gender`, `classroom`, `email`) VALUES
('Bethany', 'Walker', 'Nathaniel', '1971-02-23', 'Velit accusamus rer', 0, 'Male', 'Select Class Room', 'behof@mailinator.com'),
('Brittany', 'Noah', 'Odessa', '2017-08-22', 'Expedita nobis et al', 0, 'Male', 'Select Class Room', 'hocy@mailinator.com'),
('Brody', 'Kendall', 'Isabelle', '1989-01-11', 'Nostrud dolor est ve', 1, 'Female', '4-B', 'vabylem@mailinator.com'),
('Illana', 'Mufutau', 'Walker', '2016-04-06', 'In voluptates rem no', 0, 'Male', '4-B', 'sibokuzi@mailinator.com'),
('Kiayada', 'Robin', 'Ariel', '1997-05-31', 'Magna architecto sol', 0, 'Female', '4-B', 'qofydynif@mailinator.com'),
('Lilah', 'Miranda', 'Xavier', '2010-03-12', 'Proident vel perspi', 1, 'Female', '4-B', 'xohunelocy@mailinator.com'),
('Rafael', 'Montana', 'Molly', '2017-12-29', 'Cumque voluptatem O', 1, 'Male', 'Select Class Room', 'tiqohababo@mailinator.com'),
('ST1000010001', 'Kasun1', 'Chamara', '2022-05-19', 'Colombo Road \r\nKandy', 1, 'Female', '4-B', 'student@gmail.com'),
('ST1000010002', 'Dasun4', 'Shanuka', '2020-05-31', 'Ampara Road \r\nUhana', 1, 'Male', '4-B', 'stu1@stu1.stu1'),
('STU1000040000', 'Dilip', 'Silva', '2022-05-19', 'asasas', 1, 'Male', '4-B', 'dil@dil.dil'),
('STU100004005', 'Hashini', 'Asiri', '2020-05-27', 'asassas', 1, 'Female', 'Select Class Room', 'h@h.h');

INSERT INTO `subject` (`sid`, `title`, `description`) VALUES
('Aute est nulla volup', 'Ipsa in voluptas vo', 'Saepe officia culpa '),
('Autem at ea sint co', 'Est recusandae Quos', 'Aut illum porro id '),
('Et pariatur Dolores', 'Animi amet dolor f', 'Et atque et pariatur'),
('Lorem sipsum', 'Loadfushn gulg', 'Lores informr'),
('Odio quasi enim nost', 'Quia ut libero dolor', 'Necessitatibus non n'),
('Praesentium quo et a', 'Dicta error est sunt', 'Est eaque ea placea'),
('Quaerat illum nesci', 'Velit voluptatem N', 'Alias quis quam elig'),
('Quas laudantium nem', 'Aspernatur Nam sapie', 'Ea animi culpa ill'),
('SCM4251', 'Science and Technology', 'Chemistry Basics\r\n'),
('Sequi fugiat molliti', 'Quas debitis volupta444', 'Ex reiciendis omnis '),
('Vero aperiam facere ', 'Animi est sed aliq', 'Atque quidem explica'),
('Voluptatem Consequa', 'Dignissimos in eos ', 'Excepturi deserunt i');

INSERT INTO `teacher` (`tid`, `fname`, `lname`, `address`, `contact`, `bday`, `skill`, `gender`, `email`) VALUES
('Andrew', 'Lawrence45', 'Odette', 'Ipsa et distinctio', 'Eve123123', '2022-05-19', 'Ut voluptatem dolor', 'Female', 'hina@mailinator.com'),
('Ramona', 'Raphael', 'Seth', 'Tempor sit doloribu', 'Roary', '1978-09-27', 'Rerum dolor et nulla', 'Male', 'gojewili@mailinator.com'),
('TC1000020000', 'Nimal ', 'Soyza555', 'Kandy Road\r\nNittambuwa', '0339988554', '2022-05-21', 'Science\r\nMathematics\r\nHistory', 'Male', 'tea@tea.tea');

INSERT INTO `user` (`role`, `email`, `password`) VALUES
('Parent', 'parent@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('Student', 'student@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('Teacher', 'teacher@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');
