C:\Windows\System32>psql -h localhost -U postgres
Пароль користувача postgres:
psql (17.2)
УВАГА: Кодова стор?нка консол? (866) в?др?зняється в?д кодової стор?нки Windows (1251)
         8-б?тов? символи можуть працювати неправильно. Детальн?ше у розд?л?
         "Нотатки для користувач?в Windows" у документац?ї psql.
Введ?ть "help", щоб отримати допомогу.

postgres=# CREATE DATABASE student_management;
CREATE DATABASE
postgres=# \c student_management
Ви тепер п?д'єднан? до бази даних "student_management" як користувач "postgres".
student_management=# -- Таблиця студентів
student_management=# CREATE TABLE students (
student_management(#     student_id SERIAL PRIMARY KEY,
student_management(#     first_name VARCHAR(100),
student_management(#     last_name VARCHAR(100),
student_management(#     dob DATE,
student_management(#     contact VARCHAR(100)
student_management(# );
CREATE TABLE
student_management=#
student_management=# -- Таблиця курсів
student_management=# CREATE TABLE courses (
student_management(#     course_id SERIAL PRIMARY KEY,
student_management(#     course_name VARCHAR(100),
student_management(#     instructor VARCHAR(100),
student_management(#     credits INT
student_management(# );
CREATE TABLE
student_management=#
student_management=# -- Таблиця відвідуваності
student_management=# CREATE TABLE attendance (
student_management(#     attendance_id SERIAL PRIMARY KEY,
student_management(#     student_id INT REFERENCES students(student_id),
student_management(#     course_id INT REFERENCES courses(course_id),
student_management(#     date DATE,
student_management(#     status VARCHAR(20)
student_management(# );
CREATE TABLE
student_management=#
student_management=# -- Таблиця оцінок
student_management=# CREATE TABLE grades (
student_management(#     grade_id SERIAL PRIMARY KEY,
student_management(#     student_id INT REFERENCES students(student_id),
student_management(#     course_id INT REFERENCES courses(course_id),
student_management(#     grade VARCHAR(2),
student_management(#     date DATE
student_management(# );
CREATE TABLE
student_management=# -- Додавання студентів
student_management=# INSERT INTO students (first_name, last_name, dob, contact)
student_management-# VALUES ('Ivan', 'Ivanov', '2000-01-01', 'ivanov@mail.com'),
student_management-#        ('Olga', 'Petrova', '1999-02-15', 'petrova@mail.com');
INSERT 0 2
student_management=#
student_management=# -- Додавання курсів
student_management=# INSERT INTO courses (course_name, instructor, credits)
student_management-# VALUES ('Mathematics', 'Dr. Smith', 3),
student_management-#        ('History', 'Prof. Johnson', 2);
INSERT 0 2
student_management=#
student_management=# -- Додавання відвідуваності
student_management=# INSERT INTO attendance (student_id, course_id, date, status)
student_management-# VALUES (1, 1, '2025-02-02', 'Present'),
student_management-#        (2, 1, '2025-02-02', 'Absent'),
student_management-#        (1, 2, '2025-02-02', 'Present');
INSERT 0 3
student_management=#
student_management=# -- Додавання оцінок
student_management=# INSERT INTO grades (student_id, course_id, grade, date)
student_management-# VALUES (1, 1, 'A', '2025-02-02'),
student_management-#        (2, 1, 'B', '2025-02-02'),
student_management-#        (1, 2, 'C', '2025-02-02');
INSERT 0 3
student_management=# SELECT s.first_name, s.last_name, c.course_name
student_management-# FROM students s
student_management-# JOIN attendance a ON s.student_id = a.student_id
student_management-# JOIN courses c ON a.course_id = c.course_id
student_management-# WHERE c.course_name = 'Mathematics';
 first_name | last_name | course_name
------------+-----------+-------------
 Ivan       | Ivanov    | Mathematics
 Olga       | Petrova   | Mathematics
(2 Ё фъш)


student_management=# SELECT s.first_name, s.last_name, c.course_name, g.grade
student_management-# FROM students s
student_management-# JOIN grades g ON s.student_id = g.student_id
student_management-# JOIN courses c ON g.course_id = c.course_id
student_management-# WHERE s.student_id = 1;
 first_name | last_name | course_name | grade
------------+-----------+-------------+-------
 Ivan       | Ivanov    | Mathematics | A
 Ivan       | Ivanov    | History     | C
(2 Ё фъш)


student_management=# CREATE INDEX idx_student_id ON attendance(student_id);
CREATE INDEX
student_management=# CREATE INDEX idx_course_id ON attendance(course_id);
CREATE INDEX
student_management=# CREATE INDEX idx_student_grade ON grades(student_id);
CREATE INDEX
student_management=# pg_dump -U postgres student_management > student_management_backup.sql
student_management-# pg_ctl reload
student_management-# \й
Нев?рна команда \c
Спробуйте \? для отримання дов?дки.
student_management-# \q

C:\Windows\System32>psql -U <student_management> -d <student_management>
The syntax of the command is incorrect.

C:\Windows\System32>psql -U "student_management" -d "student_management"
psql: помилка: п?дключення до серверу "localhost" (::1), порт 5432 провалено: Connection refused (0x0000274D/10061)
        Чи працює сервер на цьому хост? ? приймає TCP/IP п?дключення?
п?дключення до серверу "localhost" (127.0.0.1), порт 5432 провалено: Connection refused (0x0000274D/10061)
        Чи працює сервер на цьому хост? ? приймає TCP/IP п?дключення?

C:\Windows\System32>
C:\Windows\System32>psql -U <student_management> -d <student_management>
The syntax of the command is incorrect.
C:\Windows\System32>psql -U "student_management" -d "student_management"
Пароль користувача student_management:
psql: помилка: п?дключення до серверу "localhost" (::1), порт 5432 провалено: ФАТАЛЬНО:  користувач "student_management" не пройшов автентиф?кац?ю за допомогою пароля

C:\Windows\System32>psql -U "student_management" -d "student_management"
Пароль користувача student_management:
psql: помилка: п?дключення до серверу "localhost" (::1), порт 5432 провалено: ФАТАЛЬНО:  користувач "student_management" не пройшов автентиф?кац?ю за допомогою пароля

C:\Windows\System32>psql -U "student_management" -d "student_management"
Пароль користувача student_management:
psql: помилка: п?дключення до серверу "localhost" (::1), порт 5432 провалено: ФАТАЛЬНО:  користувач "student_management" не пройшов автентиф?кац?ю за допомогою пароля

C:\Windows\System32>psql -U postgres -d postgres
Пароль користувача postgres:
psql: помилка: п?дключення до серверу "localhost" (::1), порт 5432 провалено: ФАТАЛЬНО:  користувач "postgres" не пройшов автентиф?кац?ю за допомогою пароля

C:\Windows\System32>psql -U postgres -d postgres
Пароль користувача postgres:
psql (17.2)
УВАГА: Кодова стор?нка консол? (866) в?др?зняється в?д кодової стор?нки Windows (1251)
         8-б?тов? символи можуть працювати неправильно. Детальн?ше у розд?л?
         "Нотатки для користувач?в Windows" у документац?ї psql.
Введ?ть "help", щоб отримати допомогу.

postgres=# ALTER USER student_management WITH PASSWORD 'новий_пароль';
ПОМИЛКА:  роль "student_management" не ?снує
postgres=# ALTER USER student_management WITH PASSWORD 'mysecret';
ПОМИЛКА:  роль "student_management" не ?снує
postgres=# \du
                                      ╤яшёюъ Ёюыхщ
 ▓ь'  Ёюы│ |                                  └ЄЁшсєЄш
-----------+----------------------------------------------------------------------------
 postgres  | ╤єяхЁъюЁшёЄєтрў, ╤ЄтюЁшЄш Ёюы№, ╤ЄтюЁшЄш срчє фрэшї, ╨хяы│ърЎ│ , ╬сї│ф RLC


postgres=# CREATE USER student_management WITH PASSWORD 'mysecret';
CREATE ROLE
postgres=# \du
                                          ╤яшёюъ Ёюыхщ
     ▓ь'  Ёюы│      |                                  └ЄЁшсєЄш
--------------------+----------------------------------------------------------------------------
 postgres           | ╤єяхЁъюЁшёЄєтрў, ╤ЄтюЁшЄш Ёюы№, ╤ЄтюЁшЄш срчє фрэшї, ╨хяы│ърЎ│ , ╬сї│ф RLC
 student_management |


postgres=# GRANT ALL PRIVILEGES ON DATABASE student_management TO student_management;
GRANT
postgres=# psql -U student_management -d student_management
postgres-# psql -U "postgres" -d "student_management"
postgres-# -- Додаємо нових студентів
postgres-# INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, phone)
postgres-# VALUES
postgres-# (3, 'Olena', 'Sydorova', '2001-06-10', 'olena.sydorova@example.com', '+380509876543'),
postgres-# (4, 'Yevhen', 'Shevchenko', '1998-08-25', 'yevhen.shevchenko@example.com', '+380504567890'),
postgres-# (5, 'Daria', 'Kovalenko', '2000-02-14', 'daria.kovalenko@example.com', '+380505678901'),
postgres-# (6, 'Maxym', 'Moroz', '1999-11-30', 'maxym.moroz@example.com', '+380507890123'),
postgres-# (7, 'Viktor', 'Cherevko', '2002-01-18', 'viktor.cherevko@example.com', '+380509654321');
ПОМИЛКА:  синтаксична помилка в або поблизу "psql"
РЯДОК 1: psql -U student_management -d student_management
         ^
postgres=# -- Додаємо нових студентів
postgres=# INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, phone)
postgres-# VALUES
postgres-# (3, 'Olena', 'Sydorova', '2001-06-10', 'olena.sydorova@example.com', '+380509876543'),
postgres-# (4, 'Yevhen', 'Shevchenko', '1998-08-25', 'yevhen.shevchenko@example.com', '+380504567890'),
postgres-# (5, 'Daria', 'Kovalenko', '2000-02-14', 'daria.kovalenko@example.com', '+380505678901'),
postgres-# (6, 'Maxym', 'Moroz', '1999-11-30', 'maxym.moroz@example.com', '+380507890123'),
postgres-# (7, 'Viktor', 'Cherevko', '2002-01-18', 'viktor.cherevko@example.com', '+380509654321');
ПОМИЛКА:  в?дношення "students" не ?снує
РЯДОК 1: INSERT INTO students (student_id, first_name, last_name, dat...
                     ^
postgres=# \dt
Не знайдено жодного в?дношення.
postgres=# psql -U postgres -d student_management
postgres-# -- Додаємо нових студентів
postgres-# INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, phone)
postgres-# VALUES
postgres-# (3, 'Olena', 'Sydorova', '2001-06-10', 'olena.sydorova@example.com', '+380509876543'),
postgres-# (4, 'Yevhen', 'Shevchenko', '1998-08-25', 'yevhen.shevchenko@example.com', '+380504567890'),
postgres-# (5, 'Daria', 'Kovalenko', '2000-02-14', 'daria.kovalenko@example.com', '+380505678901'),
postgres-# (6, 'Maxym', 'Moroz', '1999-11-30', 'maxym.moroz@example.com', '+380507890123'),
postgres-# (7, 'Viktor', 'Cherevko', '2002-01-18', 'viktor.cherevko@example.com', '+380509654321');
ПОМИЛКА:  синтаксична помилка в або поблизу "psql"
РЯДОК 1: psql -U postgres -d student_management
         ^
postgres=# INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, phone)
postgres-# VALUES
postgres-# (3, 'Olena', 'Sydorova', '2001-06-10', 'olena.sydorova@example.com', '+380509876543'),
postgres-# (4, 'Yevhen', 'Shevchenko', '1998-08-25', 'yevhen.shevchenko@example.com', '+380504567890'),
postgres-# (5, 'Daria', 'Kovalenko', '2000-02-14', 'daria.kovalenko@example.com', '+380505678901'),
postgres-# (6, 'Maxym', 'Moroz', '1999-11-30', 'maxym.moroz@example.com', '+380507890123'),
postgres-# (7, 'Viktor', 'Cherevko', '2002-01-18', 'viktor.cherevko@example.com', '+380509654321');
ПОМИЛКА:  в?дношення "students" не ?снує
РЯДОК 1: INSERT INTO students (student_id, first_name, last_name, dat...
                     ^
postgres=# \dt
Не знайдено жодного в?дношення.
postgres=# \й
Нев?рна команда \c
Спробуйте \? для отримання дов?дки.
postgres=# \q