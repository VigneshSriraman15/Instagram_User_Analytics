# Instagram_User_Analytics :-

## Objective of the Project :

· Analyzing Instagram user analytics involves examining various metrics to understand audience behavior, engagement patterns, and content performance.

· Gain insights into the users age, gender, location, and other characteristics.

· Learn about your audience’s interests, active hours, and engagement patterns.

· Identify what content types and topics resonate most with your audience.

· Use data to make informed decisions about content creation, posting schedules, and marketing strategies.

· Review user feedback and interactions to improve content and overall user experience.

## Approach :

· Read the complete query from given data base to understand the details of tables, columns, primary keys, foreign keys used in it.

· Started to working on the given data base to extract the required information to get the answers.

## Tools & Technologies Used :

· My SQL Workbench

## KPI's :

### 1) Marketing Analysis - Loyal User Reward - Five oldest users on Instagram from the provided database

· Used a select query to extract the top ‘5’ username from the users table ordered by descending by the created date.

### 2) Marketing Analysis - Inactive User Engagement - Users who have never posted a single photo on Instagram

· Since the user_id in the photos table is the id in the users table, I used a select query to extract the username from users table whose id is not in the photos table.

### 3) Marketing Analysis - Contest Winner Declaration - User with the most likes on a single photo

· First used a select, group by and order by queries to extract a photo_id of the most liked photo from the likes table.

· Since the photo_id in the likes table is the id in photos table, with the help of above result, I extracted the user_id of that corresponding photo_id.

· Similarly, since the user_id in the photos table is the id in the users table, I extracted the username of the corresponding user_id.

### 4) Marketing Analysis - Hashtag Research - Top five most commonly used hashtags on the platform

· Since the id in the tags table is the tag_id in the photo_tags, I joined both the tables using inner join and extracted the top ‘5’ tag_name and using group by tag_name and its count.

### 5) Marketing Analysis - Ad Campaign Launch - The best day of the week to launch ads

· Used a day of week function to extract the weekday of the users created at column and then extracted its count grouped it by the same weekday.

### 6) Investor Metrics - User Engagement - The average number of posts per user on Instagram & the total number of photos on Instagram divided by the total number of users

· Used select query and got the count of photos table grouped by user_id and then used an average function to get the average value of the same.

· Used a select query and division operator to get the average of photos count and users count.

### 7) Investor Metrics - Bots & Fake Accounts - Users (potential bots) who have liked every single photo on the site

· Used select to get the count of the photos table.

· Did inner join the users and likes tables since the user_id in the likes table is the id in the users table.

· Used select to extract the username after grouped the above by using the having function and result in the first row (count of the photos table)

## Conclusion :

· This project has potentially increased the knowledge on working on a particular project and as well the experience to select and write queries according to the requirement.

   
