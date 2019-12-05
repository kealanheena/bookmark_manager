```
As a user,
so I can see my saved bookmarks
I would like for my all bookmarks to be displayed on the page
```
| Client | Controller | Model | View|
|--------|------------|-------|-----|
|/bookmarks -> | app.rb ->| Bookmarks | |
||app.rb |<- Bookmarks||
||app.rb |->| bookmark.erb|
|/bookmark |<- app.rb | <- | bookmarks.erb|

## Instructions

- you have to first create the bookmark manager database
- after that you must connect to the new database 
- and finally you have to create a table

## Database

```
CREATE DATABASE bookmark_manager;
\c bookmark_mangager;
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

## Test Database 

```
CREATE DATABASE bookmark_manager_test;
\c bookmark_mangager;
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```