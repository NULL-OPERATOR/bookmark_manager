CRUD
---
These are the four basic functions of persistent storage. It is also used to describe the user interface conventions that facilitate viewing, searching, and changing information; often using computer based forms and reports.

Each letter in the acronym can be mapped to a standard SQL statement (and also HTTP method or DDS operation, but Eleni says we shouldn't include this here. But I rebel against authority.)


Persistence is the characteristic of state that outlives the process that created it.


SQL means Structured Query Language. It is a special purpose language used to manage data held in a relational database management system.

SQL consists of a 'data definition language', 'data manipulation language', and a 'data control language'. The letters of the acronym correlate to the following in the table:


| Operation     | SQL       | HTTP       | DDS (ELENI SAYS NOT TO INCLUDE THIS)|
| ------------- |:---------:| -----------| -----
| Create        | INSERT    | PUT / POST | write
| Read          | SELECT    | GET        | read / take
| Update        | UPDATE    | PUT / PATCH| write
| Delete        | DELETE    | DELETE     | dispose


---
Create
---
```ruby
INSERT INTO "students" (NAME) VALUES ( 'ELENI SKOUROUPATHI' );
```
Read
---
```ruby
SELECT * FROM students;
```
UPDATE
---
```ruby
UPDATE "students" SET NAME = 'EDWARD WITHERS' WHERE ID = 1;
```
DELETE
---
```ruby
DELETE FROM "students WHERE ID = 1;
```
