This is a project is I did for MYSQL Database class where I build a video store database (Project will be finished after April 16th 2022)
(UNDER CONSTRUCTION)
# Wright Video Store

This project was crating in a MYSQL class that I took at a community college. This project was to create a video store and create a database with customers, movies, and rentals dates. And create relationship between those tables. And look at the data to see if there is a business problem with the video store and if there is, what solution can I provide to make the Video store more successful in the future.

## Creating Database with relationships

To create the video store database, three tables will be needed. The three tables will be the customers, rentals, and videos tables. One option is to use the CREATE TABLES. But that option takes too much time, and it is more difficult to visualize the relationship. The better option is to create the relationship to create an EER diagram which is a diagram where you can create columns, data types, and primary or foreign key where you can see the diagram and the relationship instead of querying each table separately.

![](EER diagram png)


### Data Types
We want to select certain data types for the data to show. Majority of the data types is VARCHAR in which some columns have characters like Title, but some has the INT where the data only shows numbers and DATE where only the date is shown.

CReating Relationshuips

For example. I want
Another example is

Choosing Values to insert

Instering Cusomters

Instering Videos

Inserting Rentals

Creating a Rentals Due date

## Querying the Customers Table

To find the customers in the database, The script SELECT * FROM customers will be used.

[Customer list query script]

![] (Customers list PIC)

There are 15 customers with information such as their birth date, email, address, phone number etc.

## Querying the Videos Table

To find the movies the video store has, the script SELECT * FROM videos will be used.

[Video list query script]

![](Videos list png)

There are 35 movies with information such as genre, director, length, year etc.

## Querying the rentals

To find the date the movie has been checked out, due date and checked in for each movie that has been rented, the script SELECT * FROM rentals will be used.

[Rentals list]

![](Rentals Table png)

There are 23 rentals that has the dates, the CustomerID and the VideoID.



![] (Create video store pNG)
