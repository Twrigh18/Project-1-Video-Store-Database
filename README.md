This is a project is I did for MYSQL Database class where I build a video store database (Project will be finished after April 16th 2022)
(UNDER CONSTRUCTION)
# Wright Video Store

This project was created in a MYSQL class that I took at a community college. This project was to create a video store and create a database with customers, movies, and rentals dates. And create relationship between those tables. And look at the data to see if there is a business problem with the video store and if there is, what solution can I provide to make the Video store more successful in the future.

## Creating Database with relationships

I want a relationship where one customer rents 1-3 movies and all the movies have a rental date that were checked out, due date and checked back in. To create this relationship, the video store database is created first. Three tables will be needed. The three tables will be the customers, rentals, and videos tables. One option is to use the CREATE TABLES. But that option takes too much time, and it is more difficult to visualize the relationship. The better option is to create the relationship to create an EER diagram which is a diagram where you can create columns, data types, and primary or foreign key where you can see the diagram and the relationship instead of querying each table separately.

![](Video%20Store%20Diagram.png)

## Video Store Data Types
We want to select certain data types for the data to show. Majority of the data types is VARCHAR in which some columns have variety of characters like Title, but some has the INT where the data only shows numbers and DATE where only the date is shown. The first column in each table has that has the ID name has a primary key. The rental table has 1 primary key and 2 foreign keys in the columns named CustomerID which is linked from the customer table and VideoID which is linked from the video table. These are the data types that will be used for this database.

### Customers Table Data Types

![](Customers%20Data%20Types.png)

### Videos Table Data Types

![](Videos%20Data%20Types.png)

### Rentals Table Data Types

![](Rentals%20Data%20Types.png)

### Rentals Foreign Keys

![](Rentals%20Foreign%20Keys.png)

## Inserting Cusomters
For the Customers table, I will have 7 columns that were created in the EER Diagram named:
1. CustomersID	(Primary Key)
2. FirstName	
3. LastName	
4. BirthDate	
5. CustomersAddress	
6. CustomerPhone	
7. CustomerEmail

The script that will be used is:

INSERT INTO customers (CustomersID, FirstName, LastName, BirthDate, CustomersAddress, CustomerPhone, CustomerEmail)

VALUES ('11', 'Anthony', 'Charles', '1955-06-15',	'800 S Gilbert Rd',	'(480)031-4024', 'Anthony-Charles@yahoo.com');

I will keep using this script to insert more data values.

![](Customer%20Data%20Values.png)

## Inserting Videos
For the Videos table, I will have 7 columns that were created in the EER Diagram named:
1. VideosID	
2. Title	
3. Genre	
4. Director	
5. Length	
6. Rating	
7. Year	
8. NumberInStock

The script that will be used is:

INSERT INTO videos (VideosID, Title, Genre, Director, Length, Rating, Year, NumberinStock)

VALUES ('1', 'Avengers Endgame', 'Superhero', 'Joe Russo Anthony Russo', '181',	'PG13',	'2019',	'0');

![](Videos%20Data%20Values.png)

![](Video%20Data%20Values%202.png)

I will keep using this script to insert more data values.
## Inserting Rentals
For the Rentals table, I will have 5 columns that were created in the EER Diagram named:

1. RentalsID	
2. DateCheckedOut
3. 3.DateCheckedIn	
4. CustomerID	LIkned from the customer Table
5. VideoID Linked from the videos table

The script that will be used is:

INSERT INTO rentals (RentalsID, DateCheckedOut, DateCheckedIn, CustomerID, VideoID)
VALUES ('2', '2020-01-10', '2020-02-27', '1', '8');

![](Rentals%20Data%20Values.png)

I will keep using this script to insert more data values.

### Creating a Rentals Due date
I noticed
UPDATE rentals SET DueDate = '2020-03-01' WHERE RentalsID = 1;
So overall there are columns

## Querying the Customers Table

To find the customers in the database, The script SELECT * FROM customers will be used.

![](Customers%20Data.png)

There are 15 customers with information such as their birth date, email, address, phone number etc.

## Querying the Videos Table

To find the movies the video store has, the script SELECT * FROM videos will be used.

![](Videos%20Data.png)

There are 35 movies with information such as genre, director, length, year etc.

## Querying the rentals

To find the date the movie has been checked out, due date and checked in for each movie that has been rented, the script SELECT * FROM rentals will be used.

![](Rentals%20Data.png)

There are 23 rentals that has the dates, the CustomerID and the VideoID.

## Video Store business Problem 
Look at the data the have been extracted from query, there is a trend that is a concern. The concern is that There so many overdue rentals. Customers are not returning their movies at the due dates. And some customers are returning their movies late. This reduced inventory which means the store loses money. And buying new movies for other to rent is just more expenses for the video store

## Video Store Solution
Change store policy

The first solution is to shorten . The currently p9olicy is that the customers has a rented video for at least one month.

The second policy is to have stricter policies on customers not rented.


For late returns we give a three strikes policy and after the third, customers will not rent movies again
If the customer is not rental, they will not allowed to rent an

If the second time, they will not be able to rent any movies ever again.

