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

## Inserting Customers Values
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

VALUES ('11', 'Anthony', 'Charles', '1955-06-15',	'800 S Gilbert Rd',	'(480)031-4024', 'FirstNameLastName@yahoo.com');

I will keep using this script to insert more data values.

![](Customer%20Data%20Values.png)

## Inserting Videos Values
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

## Inserting Rentals Values
For the Rentals table, I will have 5 columns that were created in the EER Diagram named:

1. RentalsID	
2. DateCheckedOut
3. DateCheckedIn	
4. CustomerID	(Linked from the customer Table using foreign key)
5. VideoID (Linked from the videos table foreign key)

The script that will be used is:

INSERT INTO rentals (RentalsID, DateCheckedOut, DateCheckedIn, CustomerID, VideoID)
VALUES ('2', '2020-01-10', '2020-02-27', '1', '8');

![](Rentals%20Data%20Values.png)

I will keep using this script to insert more data values.

### Creating a Rentals Due date

I noticed I forgot the due date column. So, I created a DueDate column. The script that can be used is:
ALTER TABLE Rentals
ADD DueDate DATE;

The issue is that the column gets added at the end of VideoID and I want the column to be in between DateCheckedOut and DateCheckedIn.  I used the EER Diagram and in the data types I added a new column and moved to into where the column is between the DateCheckedOut column and DateCheckedIn column.

I used this script to insert values into the DueDate cloumn:
UPDATE rentals SET DueDate = '2020-03-01' WHERE RentalsID = 1;

Now there are 6 cloumns in the rentals table

1. RentalsID	
2. DateCheckedOut
3. DueDate
4. DateCheckedIn	
5. CustomerID	(Linked from the customer Table using foreign key)
6. VideoID (Linked from the videos table foreign key)

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

## Video Store Dataabse Relationships

I created a relationship where one customer is renting 1-3 movies and the date of each movie has been checked, the due date of each movie, and the date each movie has been checked back into the store. I choose six customers as an example of the movies they have rented and the rental dates of the movies that were created by linking the tables. 

Customer 1 name is James King. James King is a DC fan and wants to rent DC superhero movies. The movies that James King has been renting is Video 8 which is Wonder Woman and Video 23 which is Suicide Squad. The date that Wonder Woman has been checked out was on 2020-01-10. The due date for wonder woman was on 2020-02-28 and that movie has been checked back into the video store on 2020-02-27. The date that Suicide Squad has been checked out was on 2020-04-11. The due date for Suicide Squad was on 2020-04-30 and that movie has not been checked back into the store.

Customer 3 name is John Smith. John Smith is a Star Wars and wants to rent Star Wars movies. The movies that John Smith has been renting is Video 2 which is Star Wars the Force Awakens and Video 29 which is Star Wars the Last Jedi. The date that Star Wars the Force Awakens has been checked out on 2020-06-25. The due date for Star Wars the Force Awakens was on 2020-07-20 and that movie has been checked back into the video store on 2020-07-14. The date that Star Wars the Last Jedi has been checked out was on 2020-11-07. The due date for Star Wars the last Jedi was on 2020-12-10 and that movie has been checked back into the video store on 2020-12-01.

Customer 5 name is Kailey Harris. Kailey Harris is a horror fan and wants to rent horror movies. The movies that Kailey Harris has been renting is Video 9 which is Halloween and Video 20 which is It. The date that Halloween has been checked out was on 2020-02-04. The due date for Halloween was on 2020-03-22 and that movie has been checked back into the video store on 2020-03-01. The date that It has been checked out was on 2020-03-30. The due date for It was on 2020-04-20 and that movie has not been checked back into the store.
   
Customer 8 name is Kate Lewis. Kate Lewis is a Disney fan wants to rent Disney movies. The movies that Kate Lewis has been renting is Video 16 which is Beauty and the Beast and Video 18 which is the Jungle Book. The date that Beauty and the Beast has been checked out was on 2020-06-02. The due date for Beauty and the Beast was on 2020-07-15 and that movie has been checked back into the video store on 2020-07-07. The date that Jungle Book has been checked out was on 2020-07-10. The due date for Jungle Book was on 2020-08-05 and that movie has not been checked back into the store.

Customer 13 name is Lily Murphy. Lily Murphy is a Pixar fan wants to rent Pixar movies. The movies that Lily Murphy has been renting is Video 12 which is Incredibles 2 and Video 25 which is Inside Out and Video 26 which is Toy Story 4. The date that Incredibles 2 has been checked out was on 2020-05-27. The due date for Incredibles 2 was on 2020-06-25 and that movie has been checked back into the video store on 2020-06-19. The date that Inside Out has been checked out was on 2020-08-01.  The due date for Inside Out was 2020-09-04 and that movie has been checked back into the video store on 2020-08-15. The date that Toy Story 4 has been checked out was on 2020-12-01. The due date for Toy Story 4 was on 2020-12-15 and that movie has been checked back into the video store on 2020-12-09. 

Customer 15 name is Haley Brown. Haley Brown is a Marvel fan wants to rent Marvel movies. The movies that Haley Brown has been renting is Video 3 which is Black Panther, Video 14 which is Guardians of the Galaxy, and Video 19 which is Spider Man Homecoming. The date that Black Panther has been checked out was on2020-01-03. The due date for Black Panther was on 2020-03-15 and that movie has been checked back into the video store on 2020-03-10. The date that Guardians of the Galaxy has been checked out was on 2020-05-10. The due date for Guardians of the Galaxy was on 2020-06-01 and that movie has been checked back into the video store on 2020-05-28. The date that Spider Man Homecoming has been checked out was on 2020-11-20. The due date for Spider Man Homecoming was on 2020-12-20 and that movie has been checked back into the video store on 2020-12-17


There are more patterns that cusotmers by looking at all 3 tables and the data and seeing the trends. This can not be created without creating the realtionships betweern the customer, videos and rental tables for this database 

## Video Store Business Problem 

Looking at the data that have been extracted from querying, there is a trend that is a concern. The concern is that there so many overdue rentals. Customers are not returning their rented movies at the due dates. And some customers are returning their rented movies late. The less movies the store has that has not been returned, the more money the store loses. So, the goal is to how can I reduce the amount of overdue rentals that the video store has.

## Video Store Solution

The solution is to change store policy. I will come up with 3 new store policies.

The first new store policy is to shorten the movie rentals date window. The current policy is that the customers has rented one video for at least one month. One month is too long. Customers will forget that they rented a movie therefore less incentivizing them to return it. New policy is to shorten the movie rentals date window to one week or 7 days. When the rentals date gets shorten to one week, it makes customers watch the rented movies earlier therefore will make the customer more likely to rent their rented movie on time. I believe that shortening the movie rentals date window will helps to combat overdue rentals.

The second new store policy Is to have higher late fees. The current late fee is $1 per day that will be added for every movie that is late for up to 14 days. This late fee is not lot to get people to return their movies on time. New policy is that increase it to $2 per day for every day that is late. After 14 days if the customers haven’t returned the movie, they will be unable to rent movies at this store until the movie has been returned. For customers if they want to rent movies in the future, they will have to pay the rental cost and the late fees to keep on renting movies for this store. I believe that increasing late fees will help to combat overdue rentals.

Finally, the new store policy to have a stricter late rental return policy for repeating offenders. I will institute a three-strike rule that customer will know when they are renting movies. If a customer paid the late fees and returned the movie, they will have one strike. A strike will come the second a late fee comes for the customer’s rented movie. If the customer gets a third strike, they will get a notification that they will not be able to rent movies at this store again. The third strike will be issued only if the customer has missed the late fee 14-day mark. It gives customers a chance to know about the rental policy and abide by it. This sounds like a bad business move, but the customers have consistently been late on returning the movies and you don’t know if the customer is ever going to return the rented movies on time or ever. I believe that having stricter late rental return policy will help to combat overdue rentals.

If the second time, they will not be able to rent any movies ever again.

## Conclusion

I used SQL to create a video store database. I created a customers, videos, and a rentals table. I created a relationship where all the tables are linked to one another. I created data values that makes sense and have patterns that can be seen instead of just randomly inserting data values. I also queried all the tables to see the video store data. The relationships were also created so I can create a scenario where there are many overdue rentals. I also turned this scenario into a business problem, and I came with three new store policies that I believed that will help with combating overdue rentals. That is the Wright Video Store SQL Database project I have done in my class that I took in community college.


