# Query 1: Get all trips for a specific rider (with driver name)
SELECT t.trip_id,
       t.trip_date_time,
       CONCAT(ur.first_name, ' ', ur.last_name)                     AS Rider_name,
       CONCAT(ud.first_name, ' ', ud.last_name)                     AS Driver_name,
       t.fare_amount,
       CONCAT(t.pickup_location_id, ' and ', t.dropoff_location_id) AS PickUP_and_DropOff,
       t.trip_status,
       t.vehicle_id
FROM Trip AS t
         JOIN Rider AS r ON t.rider_id = r.user_id
         JOIN Driver AS d ON t.driver_id = d.user_id
         JOIN User AS ur ON r.user_id = ur.user_id
         JOIN User AS ud ON d.user_id = ud.user_id;


# Query 2: Calculates the minimum, maximum, average fare and total number of trips across the entire platform.
SELECT COUNT(t.trip_id)   AS Total_trips,
       MIN(p.amount_paid) AS Cheapest_fare,
       MAX(p.amount_paid) AS Most_expensive_fare,
       AVG(p.amount_paid) AS Average_fare
FROM Trip as t
         LEFT JOIN Payment AS p ON t.trip_id = p.trip_id
WHERE t.trip_status = 'completed';


#Query 3: Shows the total number of trips, total revenue earned, and average fare for each driver.

SELECT d.user_id          AS Driver_id,
       u.first_name,
       SUM(t.fare_amount) AS Total_amount_earned,
       SUM(t.distance_km) AS Total_distance_travelled,
       AVG(t.fare_amount) AS Avg_fare
FROM Driver AS d
         LEFT JOIN User AS u ON d.user_id = u.user_id
         LEFT JOIN Trip AS t ON u.user_id = t.driver_id
GROUP BY d.user_id;



SELECT *
FROM User
WHERE user_id = 20;


# Query 4: Deletes a specific rider (user_id = 20) from the system.
SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM User
WHERE user_id = 20;
SET FOREIGN_KEY_CHECKS = 1;



#Above deletion of user code is not yet implemented


#Query 5:
#Update the driver status of user_id = 2

# This query is used to display drivers information.
SELECT CONCAT(u.first_name, ' ', u.last_name) AS Name, driver_status
FROM User AS u
         LEFT JOIN Driver AS d
                   ON u.user_id = d.user_id
WHERE u.user_id = 2;


#Update status
UPDATE Driver
SET driver_status = 'active'
WHERE user_id = 2;




