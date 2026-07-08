-- basic query
-- show the databases in the current RDBMS
show databases;

-- create database
create database my_database;

-- delete database (dangerous!)
#drop database my_database;

-- enter database
use my_database;
use world;
use sakia;

-- find out the database you're in
select database();

-- comment
#single line comment
-- 1. --
#2, #

#multi lines comment
/*
comments
comments
cimments
*/
