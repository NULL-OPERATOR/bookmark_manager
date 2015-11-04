Relational Database Management Systems BLOG
=========


What is persistence as a method for information storing?
----------
Data persistence relates to storing data even after the processes which created it have ended. Database persistence ensures that data saved goes to a database and is stored indefinitely - until a process is called to amend it or delete it. Database persistence means that the file is always available as long as you are connected to the database. Session persistence means that data saved lasts until the end of the session, and is then deleted. Filesystem persistence means that data created is saved, and can only be accessed, locally, or via a connection to the local host.  

--------------------------------------------------------------------
Structure of a database
------------------------------------
A database table can be thought of as consisting of rows and columns (much like a regular table). Each row (aka tuple or record) represents a set of related data, and every row has the same structure.

Each column expects a data value of a particular type i.e. column for client id, emails or hourly wage.

--------------------------------------------------------------------

PostgreSQL
------------------------------------
PostgreSQL is an open source object relational database system. It runs on all major operating systems, and is used to store large amounts of data, and interact with other systems on data retrieval requests.

--------------------------------------------------------------------

Relational databases vs NoSQL databases
----------
Relational databases store data in the forms of rows and tables. SQL (Structured query language) is the language used to perform tasks in the database.

NoSQL databases can store data in different collections and nodes, and do not require the fixed table layout. This allows them to be more scalable, less expensive to maintain, and open source. 
