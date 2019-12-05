/* Active Database */
CREATE DATABASE bookmark_manager;
\c bookmark_mangager;
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

/* Test Database */
CREATE DATABASE bookmark_manager_test;
\c bookmark_mangager;
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));