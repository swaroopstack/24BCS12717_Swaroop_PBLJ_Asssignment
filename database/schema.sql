# -------------------------------------------------------------------
# Student Management System - MySQL schema (optional)
# Hibernate creates this table automatically because
# spring.jpa.hibernate.ddl-auto=update. Run this file only if you
# prefer to manage the schema manually.
# -------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS student_management
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE student_management;

CREATE TABLE IF NOT EXISTS students (
    id    BIGINT       NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    course VARCHAR(100) NOT NULL,
    age   INT          NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT uk_students_email UNIQUE (email)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
