PRAGMA foreign_keys = ON;

CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    group_name TEXT
);

CREATE TABLE grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    subject TEXT NOT NULL,
    grade INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (name, group_name) VALUES ('Иванов Иван', 'ПИ-21');
INSERT INTO students (name, group_name) VALUES ('Петрова Анна', 'ПИ-21');

INSERT INTO grades (student_id, subject, grade) VALUES (1, 'Базы данных', 5);
INSERT INTO grades (student_id, subject, grade) VALUES (1, 'Математика', 4);
INSERT INTO grades (student_id, subject, grade) VALUES (2, 'Базы данных', 5);