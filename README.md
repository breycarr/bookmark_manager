# Bookmark Manager

## Aim of the project

The aim of this project is to create a web app that manages bookmarks for the user, with the following specifications:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks
---

## How to Use

1. connect to `pqsl` via the command line
2. Create the database using the command `CREATE DATABASE bookmark_manager;`
3. Connect to the database with the command `\c bookmark_manager;`
4. Run query saved in ./db/migrations/01_create_bookmarks_table.sql

## Using the test environment

1. connect to `pqsl` via the command line
2. Create the database using the command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database with the command `\c bookmark_manager_test;`
4. Run query saved in ./db/migrations/01_create_bookmarks_table.sql

---

## User story 1

```
As a user (of a web browser)
So I can access my favourite websites
I want to be able to see a list of my saved bookmarks
```

![Domain Model for User Story 1](https://github.com/breycarr/bookmark_manager/blob/master/images/models/bookmark_list.jpg?raw=true)

---

## User story 2

```
As a user
Because I will find new websites that I like
I want to be able to add new websites to my list of saved bookmarks
