CREATE DATABASE Uber;

USE Uber;

#USER Database
CREATE TABLE `User`
(
    user_id    INT PRIMARY KEY,
    first_name VARCHAR(50)         NOT NULL,
    last_name  VARCHAR(50)         NOT NULL,
    email      VARCHAR(100) UNIQUE NOT NULL,
    dob        DATE                NOT NULL
);

# User contact details
CREATE TABLE `User_Phone`
(
    user_id INT,
    phone   VARCHAR(15) NOT NULL,
    PRIMARY KEY (user_id, phone),
    FOREIGN KEY (user_id) REFERENCES User (user_id)
);

# rider Table
CREATE TABLE `Rider`
(
    user_id           INT PRIMARY KEY,
    registration_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User (user_id)
);

#driver Table
CREATE TABLE `Driver`
(
    user_id        INT PRIMARY KEY,
    licence_number VARCHAR(30) UNIQUE NOT NULL,
    driver_status  ENUM ('active','inactive') DEFAULT 'inactive',
    FOREIGN KEY (user_id) REFERENCES User (user_id)
);

#Vehicle Table
CREATE TABLE `Vehicle`
(
    vehicle_id          INT PRIMARY KEY,
    registration_number VARCHAR(20) UNIQUE NOT NULL,
    model               VARCHAR(50)        NOT NULL,
    color               VARCHAR(30)        NOT NULL,
    capacity            INT CHECK ( capacity > 0 ),
    driver_id           INT,
    FOREIGN KEY (driver_id) REFERENCES Driver (user_id)
);

#Location
CREATE TABLE `Location`
(
    location_id   INT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    city          VARCHAR(50)  NOT NULL,
    postcode      VARCHAR(10)  NOT NULL
);

#Trip
CREATE TABLE `Trip`
(
    trip_id             INT PRIMARY KEY,
    trip_date_time      DATETIME NOT NULL,
    distance_km         DECIMAL(7, 2) CHECK ( distance_km > 0 ),
    fare_amount         DECIMAL(9, 2) CHECK ( fare_amount > 0 ),
    trip_status         ENUM ('requested','ongoing','completed','cancelled'),
    rider_id            INT      NOT NULL REFERENCES Rider (user_id),
    driver_id           INT      NOT NULL REFERENCES Driver (user_id),
    vehicle_id          INT      NOT NULL REFERENCES Vehicle (vehicle_id),
    pickup_location_id  INT REFERENCES Location (location_id),
    dropoff_location_id INT REFERENCES Location (location_id)
);

#Payment
CREATE TABLE `Payment`
(
    payment_id     INT PRIMARY KEY,
    payment_date   DATE          NOT NULL,
    payment_method ENUM ('card','cash','wallet'),
    amount_paid    DECIMAL(8, 2) NOT NULL,
    payment_status ENUM ('paid','pending','failed'),
    trip_id        INT REFERENCES Trip (trip_id)
);

#Review
CREATE TABLE `Review`
(
    trip_id INT REFERENCES Trip(trip_id),
    review_no INT NOT NULL,
    PRIMARY KEY (trip_id, review_no),
    rating INT CHECK ( rating >= 1 and rating <= 5 ),
    comment VARCHAR(300),
    review_date DATE NOT NULL,
    payment_id INT REFERENCES Payment(payment_id)
)