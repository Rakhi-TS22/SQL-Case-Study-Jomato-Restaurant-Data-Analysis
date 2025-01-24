# 🍽️ SQL Case Study: Jomato Restaurant Data Analysis
SQL Case Study: Jomato Restaurant Data Analysis
📌 Overview
This case study focuses on analyzing restaurant data from Jomato, where SQL queries are used to manipulate data, create user-defined functions, and derive insights on restaurant ratings, cuisine types, and costs.

📂 Dataset
The database consists of a single table:

📌 Jomato Table – Contains restaurant names, cuisine types, ratings, costs, and other relevant details.

🛠️ SQL Tasks
This repository includes a variety of SQL operations, such as:


✅ User-Defined Function (UDF)

Creates a function to insert the word "Chicken" into "Quick Bites", resulting in "Quick Chicken Bites".

✅ Data Retrieval & Filtering

Fetches restaurant name, rating, and cuisine type with the highest rating.

✅ Conditional Data Classification

Creates a Rating Status column:

⭐ Excellent (Rating > 4)

👍 Good (Rating between 3.5 and 5)

😐 Average (Rating between 3 and 3.5)

👎 Bad (Rating < 3)

✅ Mathematical Functions & Date Handling

Retrieves CEIL, FLOOR, and ABS values of restaurant ratings.
Displays the current date, year, month name, and day.

✅ Aggregation & Roll-Up Analysis

Uses ROLLUP to display restaurant type and total average cost, ensuring a hierarchical summary.

✅ Stored Procedure

Retrieves restaurant name, type, and cuisine where table booking is available (TableBooking != 'No').

✅ Transaction Handling

Updates "Cafe" to "Cafeteria", checks the result, and rolls back the transaction to maintain data integrity.

✅ Ranking & Row Numbers

Generates a row number column and fetches the top 5 areas with the highest restaurant ratings.

✅ Loops in SQL

Uses a WHILE loop to print numbers from 1 to 50.

✅ Views for Data Storage & Retrieval

Creates a TopRatingView to store the top 5 highest-rated restaurants.

✅ Triggers for Email Notifications

Adds an "OwnerEmail" column to store restaurant owner emails.

Creates a trigger that automatically sends an email notification to the restaurant owner when a new order is added.

🔍 Additional Features

Optimized data handling with functions and conditional logic.

Advanced aggregations for restaurant cost analysis.

Time-based operations to track performance trends.
