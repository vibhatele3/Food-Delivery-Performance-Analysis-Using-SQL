CREATE DATABASE FoodDeliveryAnalytics;
USE FoodDeliveryAnalytics;

CREATE TABLE Delivery_Person (
    Delivery_person_ID VARCHAR(10) PRIMARY KEY,
    Delivery_person_Age INT NOT NULL,
    Delivery_person_Ratings DECIMAL(2,1) CHECK (Delivery_person_Ratings BETWEEN 1.0 AND 5.0),
    Vehicle_condition TINYINT CHECK (Vehicle_condition BETWEEN 0 AND 3),
    Type_of_vehicle VARCHAR(30) NOT NULL,
    City VARCHAR(20) NOT NULL
);

CREATE TABLE Restaurants (
    Restaurant_id INT PRIMARY KEY,
    Restaurant_latitude DECIMAL(8,5),
    Restaurant_longitude DECIMAL(8,5),
    City_Type VARCHAR(20)
);

CREATE TABLE Orders (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Delivery_person_ID VARCHAR(10),
    Restaurant_id INT,
    Order_Date DATE,
    Time_Ordered TIME,
    Time_Order_Picked TIME,
    Type_of_order VARCHAR(20),
    Multiple_deliveries TINYINT,
    Festival VARCHAR(10),
    Weather_conditions VARCHAR(20),
    Road_traffic_density VARCHAR(20),
    Delivery_time INT,

    CONSTRAINT fk_delivery_person
    FOREIGN KEY (Delivery_person_ID)
    REFERENCES Delivery_Person(Delivery_person_ID),

    CONSTRAINT fk_restaurant
    FOREIGN KEY (Restaurant_id)
    REFERENCES Restaurants(Restaurant_id)
);

CREATE TABLE Delivery_Location (
    Location_ID VARCHAR(10) PRIMARY KEY,
    Order_ID VARCHAR(10),
    Delivery_location_latitude DECIMAL(8,5),
    Delivery_location_longitude DECIMAL(8,5),
    City VARCHAR(20),

    CONSTRAINT fk_order
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID)
);


INSERT INTO Delivery_Person VALUES
('AB01',25,4.2,3,'electric_scooter','Metropolitan'),
('AB02',28,4.6,0,'motorcycle','Metropolitan'),
('AB03',23,4.5,0,'motorcycle','Metropolitan'),
('AB04',21,4.8,1,'scooter','Metropolitan'),
('AB05',31,4.6,2,'scooter','Metropolitan'),
('AB06',26,4.7,0,'motorcycle','Metropolitan'),
('AB07',23,4.8,2,'scooter','Urban'),
('AB08',26,4.8,0,'motorcycle','Metropolitan'),
('AB09',35,4.9,2,'scooter','Metropolitan'),
('AB10',23,4.9,1,'motorcycle','Metropolitan'),
('AB11',24,4.8,2,'motorcycle','Metropolitan'),
('AB12',22,4.6,1,'scooter','Urban'),
('AB13',35,4.8,2,'scooter','Metropolitan'),
('AB14',33,4.8,2,'electric_scooter','Urban'),
('AB15',36,4.6,1,'scooter','Metropolitan'),
('AB16',34,4.6,2,'electric_scooter','Metropolitan'),
('AB17',38,4.2,2,'motorcycle','Metropolitan'),
('AB18',34,4.6,2,'scooter','Metropolitan'),
('AB19',37,4.7,2,'scooter','Metropolitan'),
('AB20',21,4.5,1,'scooter','Urban'),
('AB21',28,2.7,1,'scooter','Urban'),
('AB22',31,4.7,0,'motorcycle','Metropolitan'),
('AB23',37,4.5,0,'motorcycle','Urban'),
('AB24',38,4.6,2,'scooter','Urban'),
('AB25',30,5.0,2,'scooter','Urban'),
('AB26',22,4.8,0,'motorcycle','Metropolitan'),
('AB27',38,4.7,0,'motorcycle','Semi-Urban'),
('AB28',38,4.6,2,'motorcycle','Semi-Urban'),
('AB29',29,4.7,0,'motorcycle','Metropolitan'),
('AB30',21,4.7,2,'scooter','Urban'),
('AB31',20,5.0,1,'scooter','Metropolitan'),
('AB32',22,4.3,0,'motorcycle','Urban'),
('AB33',23,4.7,1,'scooter','Urban'),
('AB34',29,4.7,1,'scooter','Metropolitan'),
('AB35',36,4.7,2,'electric_scooter','Urban'),
('AB36',39,3.8,2,'motorcycle','Metropolitan'),
('AB37',20,4.6,1,'motorcycle','Urban'),
('AB38',31,4.1,0,'motorcycle','Metropolitan'),
('AB39',39,4.7,2,'scooter','Urban'),
('AB40',26,4.7,0,'motorcycle','Metropolitan'),
('AB41',20,4.8,2,'motorcycle','Metropolitan'),
('AB42',35,4.7,1,'scooter','Metropolitan'),
('AB43',26,4.9,1,'motorcycle','Semi-Urban'),
('AB44',23,4.4,0,'motorcycle','Metropolitan'),
('AB45',30,5.0,1,'motorcycle','Metropolitan'),
('AB46',30,4.4,0,'motorcycle','Metropolitan'),
('AB47',39,4.1,0,'motorcycle','Metropolitan'),
('AB48',23,4.6,2,'motorcycle','Metropolitan'),
('AB49',35,4.7,0,'motorcycle','Urban'),
('AB50',45,4.3,1,'scooter','Metropolitan');

select * from delivery_person;


INSERT INTO Restaurants VALUES
(1001,11.00,76.98,'Metropolitan'),
(1002,12.98,77.70,'Metropolitan'),
(1003,26.91,75.79,'Metropolitan'),
(1004,26.77,75.84,'Metropolitan'),
(1005,12.99,80.22,'Metropolitan'),
(1006,15.57,73.74,'Metropolitan'),
(1007,12.91,77.68,'Urban'),
(1008,22.53,88.37,'Metropolitan'),
(1009,12.32,76.63,'Metropolitan'),
(1010,17.41,78.33,'Metropolitan'),
(1011,10.00,76.35,'Metropolitan'),
(1012,19.07,72.87,'Urban'),
(1013,28.61,77.20,'Metropolitan'),
(1014,12.93,77.62,'Urban'),
(1015,23.35,85.33,'Metropolitan'),
(1016,17.46,78.50,'Metropolitan'),
(1017,11.03,77.02,'Metropolitan'),
(1018,17.43,78.39,'Metropolitan'),
(1019,12.98,80.22,'Metropolitan'),
(1020,10.00,76.35,'Urban'),
(1021,26.96,75.78,'Metropolitan'),
(1022,18.55,73.80,'Metropolitan'),
(1023,12.94,77.61,'Urban'),
(1024,17.43,78.39,'Urban'),
(1025,11.02,77.00,'Urban'),
(1026,17.45,78.38,'Metropolitan'),
(1027,22.73,75.87,'Metropolitan'),
(1028,17.44,78.40,'Metropolitan'),
(1029,12.30,76.64,'Metropolitan'),
(1030,11.02,76.97,'Urban'),
(1031,11.03,76.94,'Metropolitan'),
(1032,21.19,72.79,'Urban'),
(1033,21.16,72.77,'Urban'),
(1034,13.02,80.24,'Metropolitan'),
(1035,23.35,85.33,'Urban'),
(1036,23.33,85.32,'Metropolitan'),
(1037,26.91,75.81,'Urban'),
(1038,11.00,76.98,'Metropolitan'),
(1039,11.02,77.00,'Urban'),
(1040,17.43,78.41,'Metropolitan'),
(1041,21.17,72.80,'Metropolitan'),
(1042,17.41,78.44,'Metropolitan'),
(1043,22.70,75.87,'Metropolitan'),
(1044,19.08,72.88,'Metropolitan'),
(1045,13.04,80.26,'Metropolitan'),
(1046,12.31,76.66,'Metropolitan'),
(1047,30.89,75.82,'Metropolitan'),
(1048,11.02,77.00,'Metropolitan'),
(1049,13.09,80.22,'Urban'),
(1050,12.46,76.22,'Urban');

select * from restaurants;


INSERT INTO Orders VALUES
('ORD101','AB01',1001,'2022-03-30','14:28:00','15:05:00','Drinks',1,'No','Cloudy','Jam',42),
('ORD102','AB02',1002,'2022-03-29','20:30:00','20:35:00','Snack',1,'No','Windy','Jam',36),
('ORD103','AB03',1003,'2022-03-10','19:35:00','19:45:00','Drinks',1,'No','Stormy','Jam',48),
('ORD104','AB04',1004,'2022-04-02','17:15:00','17:20:00','Meal',1,'No','Fog','Medium',34),
('ORD105','AB05',1005,'2022-03-27','18:25:00','18:40:00','Drinks',1,'No','Sunny','Medium',29),
('ORD106','AB06',1006,'2022-02-15','09:45:00','09:55:00','Drinks',1,'No','Fog','Low',25),
('ORD107','AB07',1007,'2022-04-01','10:00:00','10:05:00','Buffet',0,'No','Windy','Low',20),
('ORD108','AB08',1008,'2022-02-13','18:00:00','18:05:00','Meal',1,'No','Windy','Medium',31),
('ORD109','AB09',1009,'2022-03-02','21:30:00','21:45:00','Snack',1,'No','Cloudy','Jam',43),
('ORD110','AB10',1010,'2022-04-05','20:45:00','20:55:00','Meal',0,'No','Fog','Jam',39),
('ORD111','AB11',1011,'2022-02-17','14:35:00','14:40:00','Snack',1,'No','Stormy','High',44),
('ORD112','AB12',1012,'2022-03-08','23:40:00','23:50:00','Drinks',2,'No','Windy','Low',28),
('ORD113','AB13',1013,'2022-04-01','22:15:00','22:25:00','Snack',0,'No','Sunny','Low',18),
('ORD114','AB14',1014,'2022-03-16','23:40:00','23:55:00','Drinks',0,'No','Windy','Low',19),
('ORD115','AB15',1015,'2022-03-17','21:30:00','21:40:00','Meal',0,'No','Fog','Jam',41),
('ORD116','AB16',1016,'2022-04-01','20:35:00','20:50:00','Snack',0,'No','Cloudy','Jam',38),
('ORD117','AB17',1017,'2022-03-15','20:30:00','20:35:00','Buffet',1,'No','Windy','Jam',40),
('ORD118','AB18',1018,'2022-03-14','21:55:00','22:10:00','Snack',0,'No','Sunny','Jam',35),
('ORD119','AB19',1019,'2022-03-24','18:35:00','18:50:00','Snack',0,'No','Cloudy','Medium',30),
('ORD120','AB20',1020,'2022-02-16','21:20:00','21:25:00','Drinks',1,'No','Stormy','Jam',47),
('ORD121','AB21',1021,'2022-03-04','22:10:00','22:20:00','Meal',1,'No','Sunny','Low',24),
('ORD122','AB22',1022,'2022-03-09','21:55:00','22:00:00','Buffet',1,'No','Cloudy','Jam',39),
('ORD123','AB23',1023,'2022-04-01','20:20:00','20:25:00','Drinks',1,'No','Sunny','Jam',37),
('ORD124','AB24',1024,'2022-03-17','18:35:00','18:45:00','Meal',0,'No','Sandstorms','Medium',42),
('ORD125','AB25',1025,'2022-03-05','12:00:00','12:15:00','Meal',0,'No','Stormy','High',45),
('ORD126','AB26',1026,'2022-03-19','20:30:00','20:40:00','Snack',1,'No','Fog','Jam',41),
('ORD127','AB27',1027,'2022-03-13','20:20:00','20:30:00','Drinks',1,'No','Windy','Jam',38),
('ORD128','AB28',1028,'2022-03-09','19:00:00','19:10:00','Snack',0,'No','Fog','Medium',29),
('ORD129','AB29',1029,'2022-04-01','08:25:00','08:30:00','Meal',0,'No','Fog','Low',22),
('ORD130','AB30',1030,'2022-03-30','09:55:00','10:00:00','Snack',0,'No','Cloudy','Low',19),
('ORD131','AB31',1031,'2022-03-08','00:00:00','00:15:00','Buffet',0,'No','Windy','Low',23),
('ORD132','AB32',1032,'2022-03-24','09:35:00','09:40:00','Drinks',1,'No','Windy','Low',21),
('ORD133','AB33',1033,'2022-03-05','08:25:00','08:30:00','Meal',1,'No','Sunny','Low',20),
('ORD134','AB34',1034,'2022-03-07','19:15:00','19:20:00','Meal',0,'No','Stormy','Jam',46),
('ORD135','AB35',1035,'2022-03-10','19:15:00','19:30:00','Snack',1,'No','Sandstorms','Jam',49),
('ORD136','AB36',1036,'2022-03-16','18:20:00','18:35:00','Meal',0,'No','Windy','Medium',32),
('ORD137','AB37',1037,'2022-04-01','18:35:00','18:40:00','Meal',1,'No','Fog','Medium',33),
('ORD138','AB38',1038,'2022-03-14','19:00:00','19:05:00','Buffet',2,'No','Sandstorms','Medium',44),
('ORD139','AB39',1039,'2022-04-05','08:55:00','09:10:00','Snack',1,'No','Sunny','Low',21),
('ORD140','AB40',1040,'2022-04-05','14:55:00','15:10:00','Snack',1,'No','Windy','High',35),
('ORD141','AB41',1041,'2022-04-03','11:20:00','11:35:00','Drinks',1,'No','Stormy','High',47),
('ORD142','AB42',1042,'2022-03-09','19:45:00','20:00:00','Buffet',1,'No','Cloudy','Jam',40),
('ORD143','AB43',1043,'2022-03-11','19:25:00','19:35:00','Drinks',1,'No','Windy','Jam',39),
('ORD144','AB44',1044,'2022-03-24','10:20:00','10:30:00','Snack',0,'No','Windy','Low',18),
('ORD145','AB45',1045,'2022-04-04','00:00:00','00:10:00','Buffet',0,'No','Sandstorms','Low',26),
('ORD146','AB46',1046,'2022-03-02','18:50:00','18:55:00','Meal',1,'No','Windy','Medium',31),
('ORD147','AB47',1047,'2022-02-11','11:10:00','11:15:00','Buffet',3,'No','Windy','High',52),
('ORD148','AB48',1048,'2022-03-18','20:15:00','20:30:00','Buffet',0,'No','Sandstorms','Jam',45),
('ORD149','AB49',1049,'2022-03-05','20:20:00','20:30:00','Buffet',1,'No','Sunny','Jam',37),
('ORD150','AB50',1049,'2022-03-03','22:35:00','22:40:00','Meal',1,'No','Windy','Low',24);


select * from orders;

INSERT INTO Delivery_Location VALUES
('LOC_01','ORD101',11.04,77.02,'Metropolitan'),
('LOC_02','ORD102',13.09,77.81,'Metropolitan'),
('LOC_03','ORD103',27.00,75.88,'Metropolitan'),
('LOC_04','ORD104',26.86,75.93,'Metropolitan'),
('LOC_05','ORD105',13.10,80.33,'Metropolitan'),
('LOC_06','ORD106',15.58,73.75,'Metropolitan'),
('LOC_07','ORD107',12.93,77.70,'Urban'),
('LOC_08','ORD108',22.58,88.42,'Metropolitan'),
('LOC_09','ORD109',12.41,76.72,'Metropolitan'),
('LOC_10','ORD110',17.44,78.36,'Metropolitan'),
('LOC_11','ORD111',10.04,76.39,'Metropolitan'),
('LOC_12','ORD112',19.10,72.90,'Urban'),
('LOC_13','ORD113',28.64,77.22,'Metropolitan'),
('LOC_14','ORD114',13.04,77.73,'Urban'),
('LOC_15','ORD115',23.41,85.39,'Metropolitan'),
('LOC_16','ORD116',17.49,78.53,'Metropolitan'),
('LOC_17','ORD117',11.06,77.05,'Metropolitan'),
('LOC_18','ORD118',17.56,78.52,'Metropolitan'),
('LOC_19','ORD119',13.01,80.25,'Metropolitan'),
('LOC_20','ORD120',10.13,76.48,'Urban'),
('LOC_21','ORD121',27.05,75.87,'Metropolitan'),
('LOC_22','ORD122',18.60,73.85,'Metropolitan'),
('LOC_23','ORD123',13.00,77.67,'Urban'),
('LOC_24','ORD124',17.46,78.42,'Urban'),
('LOC_25','ORD125',11.04,77.02,'Urban'),
('LOC_26','ORD126',17.51,78.44,'Metropolitan'),
('LOC_27','ORD127',22.78,75.92,'Semi-Urban'),
('LOC_28','ORD128',17.47,78.43,'Semi-Urban'),
('LOC_29','ORD129',12.31,76.65,'Metropolitan'),
('LOC_30','ORD130',11.04,76.99,'Urban'),
('LOC_31','ORD131',11.16,77.07,'Metropolitan'),
('LOC_32','ORD132',21.20,72.80,'Urban'),
('LOC_33','ORD133',21.18,72.79,'Urban'),
('LOC_34','ORD134',13.05,80.27,'Metropolitan'),
('LOC_35','ORD135',23.43,85.41,'Urban'),
('LOC_36','ORD136',23.46,85.45,'Metropolitan'),
('LOC_37','ORD137',26.96,75.86,'Urban'),
('LOC_38','ORD138',11.13,77.11,'Metropolitan'),
('LOC_39','ORD139',11.03,77.01,'Urban'),
('LOC_40','ORD140',17.47,78.45,'Metropolitan'),
('LOC_41','ORD141',21.19,72.82,'Metropolitan'),
('LOC_42','ORD142',17.44,78.47,'Metropolitan'),
('LOC_43','ORD143',22.76,75.93,'Semi-Urban'),
('LOC_44','ORD144',19.11,72.91,'Metropolitan'),
('LOC_45','ORD145',13.13,80.35,'Metropolitan'),
('LOC_46','ORD146',12.38,76.73,'Metropolitan'),
('LOC_47','ORD147',30.90,75.83,'Metropolitan'),
('LOC_48','ORD148',11.15,77.13,'Metropolitan'),
('LOC_49','ORD149',13.15,80.28,'Urban'),
('LOC_50','ORD150',11.05,77.03,'Urban');

select * from delivery_location;
select * from delivery_person;
select * from restaurants;
select * from orders;


show tables;

--/*MAIN BUSINESS PROBLEM 
The company is facing delays in food delivery operations. The objective is to analyze factors affecting delivery time and identify operational improvements using SQL analytics.*/--

--  A)BASIC_KPIS_PROJECT --


SELECT COUNT(*) AS TOTAL_ORDERS 
FROM ORDERS;

-- 2)AVERAGE_DELIVERY_TIME --

SELECT AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS;

-- 3) AVERAGE DELIVERY PERSON RATING --
SELECT AVG(DELIVERY_PERSON_RATINGS) AS AVG_RATING
FROM DELIVERY_PERSON;

--  B) TRAFFIC ANALYSIS  --
-- 1) TRAFFIC VS DELIVERY TIME --

-- BUSINESS PROBLEM -(Does traffic density affect delivery time?) --

SELECT ROAD_TRAFFIC_DENSITY,
AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS
GROUP BY ROAD_TRAFFIC_DENSITY
ORDER BY AVG(DELIVERY_TIME) DESC;

--  FINDING- (High traffic density shows the highest average delivery time.)--
-- BUSINESS INSIGHT- (Traffic congestion is one of the major causes of delayed food delivery operations.) --
-- BUSINESS SOLUTION- (The company should implement smart route optimization and increase delivery staffing during peak traffic hours.) --

-- C) WEATHER ANALYSIS --
-- 1) WEATHER IMPACT --
-- BUSINESS PROBLEM -(Analyze the impact of weather conditions on food delivery time.)

SELECT WEATHER_CONDITIONS,
avg(DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS
group by WEATHER_CONDITIONS
ORDER BY AVG_DELIVERY_TIME desc
limit 3;

-- FINDING-(Stormy weather has the highest average delivery time.) --

-- BUSINESS INSIGHT - (Stormy weather negatively affects delivery efficiency and increases delays.) --

-- BUSINESS SOLUTION - (Implement weather-based route optimization and dynamic ETA prediction to reduce delays during adverse weather conditions.) --

-- Estimated Time of Arrival(ETA) -- (Predicting how much time an order will take to reach the customer.) --

-- D) MULTIPLE DELIVERY ANALYSIS --

--  BUSINESS PROBLEM - (Analyze the impact of multiple deliveries on delivery time.) --

SELECT MULTIPLE_DELIVERIES,
AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME 
FROM ORDERS
group by MULTIPLE_DELIVERIES ;

-- FINDING - (Orders with 3 multiple deliveries have the highest average delivery time, and delivery time decreases as the number of deliveries decreases.) --

-- BUSINESS INSIGHT  - (Handling multiple orders simultaneously increases delivery delays and reduces operational efficiency.) --

-- BUSINESS SOLUTIONS -(Limit multiple deliveries during peak hours and optimize delivery allocation to reduce delays.) -- 

-- E) CITY PERFORMACE --

-- BUSINESS PROBLEM - (Analyze delivery performance across different city types.) --

SELECT DP.CITY ,
AVG(O.DELIVERY_TIME) AS AVG_DELIVERY_TIME 
FROM ORDERS o
JOIN DELIVERY_PERSON DP 
ON DP.DELIVERY_PERSON_ID = O.DELIVERY_PERSON_ID 
GROUP BY DP.CITY;

-- FINDING  - (Metropolitan cities have the highest average delivery time, followed by Semi-Urban and Urban cities.)  --

-- Business Insight- (High traffic and operational complexity in metropolitan areas lead to longer delivery times.) --

-- BUSINESS SOLUTION - (Improve route optimization and increase delivery resources in metropolitan cities to reduce delays and improve efficiency.) --

--  OPTIONS TO INCREASE DELIVERY RESOURCES -( increase number of delivery agents /deploy extra riders during peak hours /increase vehicle availability /create area-wise delivery allocation /use backup delivery staff during high demand /assign more riders in metropolitan areas --

-- F) DRIVER PERFORMANCE ANALYSIS  -- 
--  1) TOP DRIVERS
-- BUSINESS PROBLEM - (Identify top-performing delivery agents based on delivery efficiency.) -- 

select DELIVERY_PERSON_ID,
AVG(DELIVERY_TIME) AS AVG_TIME
FROM ORDERS 
group by DELIVERY_PERSON_ID
ORDER BY AVG(DELIVERY_TIME) ASC
limit 5 ;

-- FINDING -(Delivery agents AB13, AB44, AB14, AB30, and AB33 have the shortest average delivery time.) --

 
-- BUSINESS INSIGHT- (Efficient delivery agents help reduce delivery delays and improve operational performance.) --

-- BUSINESS INSIGHT -(Analyze the working patterns of top-performing drivers and use them as benchmarks for training other)--

--  G)WINDOWS FUNCTION ANALYSIS -- 
-- 1)RANK DRIVER --

--  BUSINESS PROBLEM -- (Rank delivery agents based on delivery performance.) --

SELECT Delivery_person_ID,
AVG(Delivery_time) AS avg_delivery_time,
RANK() OVER(
ORDER BY AVG(Delivery_time)
) AS driver_rank
FROM Orders
GROUP BY Delivery_person_ID
LIMIT 5;


-- FINDING -(Delivery agents AB13 and AB44 achieved Rank 1, followed by AB14, AB30, and AB33 among the top-performing drivers based on average delivery time.) --

-- BUSINESS INSIGHT --(Top-ranked delivery agents demonstrate higher delivery efficiency and faster order completion.) --

-- BUSINESS SOLUTIONS  -- (Use performance ranking to identify efficient drivers, improve workforce management, and provide training based on top performers’ delivery practices.) -- 

-- H) SUBQUERY ANALYSIS --

-- Business Problem -(Identify delivery agents performing better than the overall average delivery time.) --

SELECT Delivery_person_ID,
AVG(Delivery_time) AS avg_time 
FROM Orders
GROUP BY Delivery_person_ID
HAVING AVG(Delivery_time) <
(
SELECT AVG(Delivery_time)
FROM Orders
limit 5
);

-- FINDINGS -(Delivery agents AB04, AB05, AB06, AB07, AB08, and AB12 performed better than the average delivery time.) --

-- BUSINESS INSIGHT - (Some delivery agents consistently deliver orders faster than the overall operational average, indicating higher efficiency.) --

-- BUSINESS SOLUTIONS -(Recognize high-performing delivery agents and use their delivery practices as performance benchmarks for improving overall delivery efficiency.) --

-- I)VEHICLE PERFORMACE ANALYSIS --
SELECT * FROM delivery_person;
SELECT * FROM ORDERS;

-- 1)BUSINESS QUESTION 1 - Which vehicle type delivers fastest?

SELECT D.Type_of_vehicle,
AVG(O.Delivery_time) AS Avg_Delivery_Time
FROM Orders O
INNER JOIN Delivery_Person D
ON O.Delivery_person_ID = D.Delivery_person_ID
GROUP BY D.Type_of_vehicle;

-- Finding - (Electric scooters have the highest average delivery time, while scooters show the lowest average delivery time.) --

-- Business Insight- (Vehicle type affects delivery efficiency, and scooters perform better for faster food delivery operations.) --

-- Business Solution -(Increase scooter allocation for short-distance deliveries and optimize vehicle assignment based on delivery conditions and city routes.)


--  2)Does vehicle condition affect delivery efficiency?--

-- Analyze the impact of vehicle condition on delivery performance.--

SELECT  D.VEHICLE_CONDITION,
AVG(O.DELIVERY_TIME) AS AVG_DELIVERY_TIME 
FROM ORDERS O
INNER JOIN DELIVERY_PERSON D
ON o.DELIVERY_PERSON_ID = D.DELIVERY_PERSON_ID
GROUP BY D.VEHICLE_CONDITION ;

-- Finding -(Vehicle condition 3 has the highest average delivery time, while vehicle condition 1 shows the lowest average delivery time.)

-- Business Insight -(Poor or unsuitable vehicle conditions can reduce delivery efficiency and increase delivery delays.)

-- Business Solution -(Regular vehicle maintenance and proper vehicle allocation should be implemented to improve delivery performance and reduce operational delays.)


-- 3) Business Question -(Which vehicle type performs best in metropolitan cities?) / Analyze vehicle performance in metropolitan cities.

select * FROM delivery_person;

SELECT D.TYPE_OF_VEHICLE,D.CITY,
AVG(O.DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS O 
INNER JOIN delivery_person D 
on D.Delivery_person_ID= O.DELIVERY_PERSON_ID
WHERE CITY = "METROPOLITAN"
group by D.Type_of_vehicle;

-- Finding -(Electric scooters have the highest average delivery time in metropolitan cities, while scooters show the lowest average delivery time.) --

-- Business Insight -(Scooters perform more efficiently in metropolitan areas with high traffic and shorter delivery routes.) -- 

-- Business Solution -(Increase scooter allocation in metropolitan cities and optimize vehicle selection based on traffic and route conditions to improve delivery efficiency.) --

-- 4) Which vehicle type is most frequently used? / Analyze the usage distribution of different vehicle types in delivery operations.

SELECT * FROM delivery_person;

SELECT TYPE_OF_VEHICLE ,COUNT( DELIVERY_PERSON_ID )AS VEHICLE_COUNT
FROM DELIVERY_PERSON
group by TYPE_OF_VEHICLE ;

-- Finding -(Motorcycles are the most frequently used vehicles, while electric scooters are used the least.) --

-- Business Insight -(The company relies heavily on motorcycles for delivery operations due to their flexibility and operational efficiency.) --

-- Business Solution -(Optimize vehicle allocation based on delivery requirements and explore increased use of electric scooters for cost-effective and eco-friendly short-distance deliveries.)

-- 5) Which vehicle performs best during jam traffic? / Analyze the impact of vehicle condition during jam traffic on delivery performance.

SELECT * FROM orders;
SELECT * FROM delivery_person;

SELECT D.VEHICLE_CONDITION,
O.ROAD_TRAFFIC_DENSITY,
AVG(O.DELIVERY_TIME) AS AVG_DELIVERY_TIME 
FROM orders O
INNER JOIN DELIVERY_PERSON D 
ON O.Delivery_person_ID=D.Delivery_person_ID
WHERE O.ROAD_TRAFFIC_DENSITY ="JAM"
group by D.VEHICLE_CONDITION;

-- Finding -(Vehicle condition 1 and 3 show the highest average delivery time during jam traffic, while vehicle condition 0 has the lowest average delivery time.) --

-- Business Insight - (Vehicle condition affects delivery efficiency during heavy traffic conditions and may contribute to operational delays.) --

-- Business Solution -(Ensure proper vehicle maintenance and assign better-performing vehicles during high traffic periods to improve delivery efficiency.) --

-- 6)Rank vehicle types based on delivery efficiency-- 

SELECT D.Type_of_vehicle,
AVG(O.Delivery_time) AS Avg_Delivery_Time,
RANK() OVER(ORDER BY AVG(O.Delivery_time)) AS Vehicle_Rank
FROM Orders O
INNER JOIN Delivery_Person D
ON O.Delivery_person_ID = D.Delivery_person_ID
GROUP BY D.Type_of_vehicle;

-- Finding -(Scooters achieved Rank 1 with the lowest average delivery time, followed by motorcycles at Rank 2, while electric scooters ranked lowest in delivery efficiency.)

-- Business Insight -(Scooters are the most efficient vehicle type for faster food delivery operations compared to motorcycles and electric scooters.)

--  Business Solution- (Increase scooter allocation for high-demand and short-distance deliveries to improve overall delivery efficiency and reduce operational delays.)

-- 7)Compare vehicle performance across different city types.
-- Analyze vehicle performance across different city types to identify the most efficient delivery vehicles in each operational area.--
SELECT D.TYPE_OF_VEHICLE,D.CITY AS CITY_TYPE ,
AVG(O.DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS O 
INNER JOIN DELIVERY_PERSON D 
ON O.DELIVERY_PERSON_ID=D.DELIVERY_PERSON_ID
GROUP BY D.TYPE_OF_VEHICLE,D.CITY;


-- Finding -(Scooters show the lowest average delivery time in both Metropolitan and Urban cities, while electric scooters show the highest delivery time in Metropolitan cities.) --

-- Business InsighT -(Scooters perform more efficiently across different city types, especially in high-traffic metropolitan areas. Electric scooters may face operational limitations in longer or congested routes.) --

-- Business Solution- (Increase scooter deployment in metropolitan and urban areas for faster deliveries and optimize electric scooter usage for shorter-distance or low-traffic routes.) --


-- J)Order Type Analysis

-- 1)Which order type takes longest delivery time? / Analyze delivery performance across different order types.

SELECT * FROM ORDERS;

SELECT TYPE_OF_ORDER,
AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS
group by TYPE_OF_ORDER
ORDER BY AVG_DELIVERY_TIME DESC;

-- Finding -(Buffet orders have the highest average delivery time, while snack orders have the lowest average delivery time.)--

-- Business Insight - (Larger or more complex food orders like buffet meals may require additional preparation and handling time, leading to delivery delays.)--

-- Business Solution -- (Implement better order preparation coordination and assign experienced delivery agents for large buffet orders to improve delivery efficiency.) --

-- 2)Which order type is most frequently ordered?  / Identify the most frequently ordered food categories.-- 

SELECT * FROM ORDERS;
 
SELECT TYPE_OF_ORDER, COUNT(TYPE_OF_ORDER) AS TOTAL_ORDERS
FROM ORDERS
GROUP BY TYPE_OF_ORDER
ORDER BY TOTAL_ORDERS DESC;

--  Finding -(Snack and Meal orders are the most frequently placed order types, followed by Drinks orders.) --

-- Business Insight --(Customers show higher demand for quick meals and snack items, making them the core revenue-driving order categories.) --

-- Business Solution -(Improve operational planning and inventory management for high-demand meal and snack categories to ensure faster service and better customer satisfaction.) -- 
 
-- K)TIME-BASED ANALYSIS 
-- 1) Which order time has highest delivery time? /Analyze delivery performance based on order timing to identify peak delay periods.

SELECT * FROM ORDERS ;

SELECT TIME_ORDERED,AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME 
FROM ORDERS
GROUP BY TIME_ORDERED
ORDER BY AVG_DELIVERY_TIME DESC
limit 5;

-- Finding -(Orders placed during afternoon and evening hours, especially around 7 PM to 9 PM, show the highest average delivery times. The highest delay was observed at 11:10 PM and 7:35 PM.

-- Business Insight -- (Peak order timings increase operational pressure, traffic congestion, and restaurant preparation load, leading to longer delivery times.) --

-- Business Solution - (Increase delivery staff and optimize order allocation during peak evening hours to reduce delays and improve delivery efficiency.) -- 

-- L)  Delay Risk Analysis -- 
-- 1)Which weather and traffic combination causes highest delays? / Identify which weather and traffic combinations create the highest delivery delays.
SELECT  * FROM ORDERS;

SELECT WEATHER_CONDITIONS,ROAD_TRAFFIC_DENSITY,
AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME 
FROM ORDERS
GROUP BY WEATHER_CONDITIONS ,ROAD_TRAFFIC_DENSITY
order by AVG_DELIVERY_TIME DESC
LIMIT 5;

-- Finding -(Stormy and Sandstorm weather conditions combined with Jam traffic show the highest average delivery times, while Sunny and Low traffic conditions show the lowest delays.)

-- Business Insight - (Severe weather conditions along with heavy traffic significantly increase delivery delays and operational risk.)

-- Business Solution -(Implement dynamic delivery planning during adverse weather conditions by increasing delivery resources, optimizing routes, and improving ETA prediction for customers.)

-- 2) Do multiple deliveries during jam traffic increase delays? /Analyze whether multiple deliveries during jam traffic increase delivery delays.
SELECT * FROM ORDERS;

SELECT MULTIPLE_DELIVERIES,
AVG(DELIVERY_TIME) AS AVG_DELIVERY_TIME
FROM ORDERS 
WHERE ROAD_TRAFFIC_DENSITY ="JAM"
group by MULTIPLE_DELIVERIES
ORDER BY AVG_DELIVERY_TIME DESC;

-- Finding-(Orders with 1 multiple delivery show slightly higher average delivery time compared to orders with no multiple deliveries during jam traffic.)

-- Business Insight -(Assigning multiple deliveries to delivery agents during heavy traffic conditions can increase operational delays and reduce delivery efficiency.)

-- Business Solution -(Limit multiple order assignments during jam traffic and optimize delivery allocation to improve delivery speed and customer satisfaction.)

-- M) LOCATION AND DELIVERY COVERAGE ANALYSIS /Analyze restaurant distribution across different city types.
-- 1)Which City Has More Restaurants?

SELECT CITY_TYPE ,COUNT(RESTAURANT_ID) AS TOTAL_RESTAURANTS
FROM restaurants
GROUP BY City_Type
ORDER BY TOTAL_RESTAURANTS DESC;

-- Finding -(Metropolitan cities have significantly more restaurants compared to Urban cities.) --

-- Business Insight -(The company’s operations and restaurant partnerships are highly concentrated in metropolitan areas, indicating higher customer demand and business activity in these regions.

-- Business Solution- (Expand restaurant partnerships in Urban cities to increase market reach and balance delivery operations across different locations.)

-- 2) Which City Has More Delivery Locations? / Analyze customer delivery distribution across different city types.

SELECT CITY,COUNT(LOCATION_ID) AS MAX_LOCATION
FROM delivery_location
group by CITY
ORDER BY MAX_LOCATION DESC;

-- Finding -(Metropolitan cities have the highest number of delivery locations, followed by Urban cities, while Semi-Urban cities have the lowest delivery coverage.

-- Business Insight- (Customer demand and delivery operations are highly concentrated in metropolitan areas, whereas Semi-Urban regions show lower operational reach and market penetration.

-- Business Solution -(Increase delivery expansion and promotional activities in Semi-Urban and Urban areas to improve customer reach and business growth.




