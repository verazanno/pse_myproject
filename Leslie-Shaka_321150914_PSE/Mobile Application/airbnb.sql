-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 09:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airbnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `UserID`) VALUES
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(29, 9),
(30, 10),
(31, 11),
(32, 12),
(33, 13),
(34, 14),
(35, 15),
(36, 16),
(37, 17),
(38, 18),
(39, 19),
(40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `AmenityID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `GuestID` int(11) NOT NULL,
  `CheckInDate` date NOT NULL,
  `CheckOutDate` date NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `PropertyID`, `GuestID`, `CheckInDate`, `CheckOutDate`, `TotalPrice`) VALUES
(1, 21, 21, '2023-11-01', '2023-11-05', '500.00'),
(2, 22, 22, '2023-11-10', '2023-11-15', '750.00'),
(3, 23, 23, '2023-11-03', '2023-11-06', '300.00'),
(4, 24, 24, '2023-11-07', '2023-11-09', '200.00'),
(5, 25, 25, '2023-11-05', '2023-11-10', '600.00'),
(6, 26, 26, '2023-11-15', '2023-11-20', '900.00'),
(7, 27, 27, '2023-11-12', '2023-11-16', '700.00'),
(8, 28, 28, '2023-11-03', '2023-11-07', '350.00'),
(9, 29, 29, '2023-11-20', '2023-11-25', '1000.00'),
(10, 30, 30, '2023-11-01', '2023-11-04', '400.00'),
(11, 31, 31, '2023-11-02', '2023-11-03', '100.00'),
(12, 32, 32, '2023-11-05', '2023-11-09', '450.00'),
(13, 33, 33, '2023-11-08', '2023-11-12', '550.00'),
(14, 34, 34, '2023-11-11', '2023-11-15', '650.00'),
(15, 35, 35, '2023-11-14', '2023-11-18', '750.00'),
(16, 36, 36, '2023-11-17', '2023-11-21', '850.00'),
(17, 37, 37, '2023-11-19', '2023-11-23', '950.00'),
(18, 38, 38, '2023-11-22', '2023-11-26', '1050.00'),
(19, 39, 39, '2023-11-25', '2023-11-29', '1150.00'),
(20, 40, 40, '2023-11-28', '2023-11-30', '1200.00');

-- --------------------------------------------------------

--
-- Table structure for table `bookinghistory`
--

CREATE TABLE `bookinghistory` (
  `HistoryID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuestID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuestID`, `UserID`) VALUES
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(29, 9),
(30, 10),
(31, 11),
(32, 12),
(33, 13),
(34, 14),
(35, 15),
(36, 16),
(37, 17),
(38, 18),
(39, 19),
(40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `HostID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`HostID`, `UserID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MessageID` int(11) NOT NULL,
  `SenderUserID` int(11) NOT NULL,
  `ReceiverUserID` int(11) NOT NULL,
  `MessageText` text NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`MessageID`, `SenderUserID`, `ReceiverUserID`, `MessageText`, `Timestamp`) VALUES
(1, 1, 2, 'Hi there! How are you?', '2023-11-01 05:30:00'),
(2, 2, 1, 'I am doing great! Thanks for asking.', '2023-11-01 06:15:00'),
(3, 3, 4, 'Can you pick me up at the airport tomorrow?', '2023-11-02 11:20:00'),
(4, 4, 3, 'Sure, what time is your flight?', '2023-11-02 12:05:00'),
(5, 5, 6, 'Let us plan our vacation for next month.', '2023-11-03 08:45:00'),
(6, 6, 5, 'Sounds like a great idea! Where should we go?', '2023-11-03 09:30:00'),
(7, 7, 8, 'Do you have any dietary restrictions?', '2023-11-04 16:10:00'),
(8, 8, 7, 'I am vegetarian, no meat, please.', '2023-11-04 17:00:00'),
(9, 9, 10, 'Let us discuss the project tomorrow morning.', '2023-11-05 06:00:00'),
(10, 10, 9, 'Sure, I will prepare the presentation.', '2023-11-05 07:00:00'),
(11, 11, 12, 'Meeting at the cafe at 3 PM.', '2023-11-06 11:30:00'),
(12, 12, 11, 'See you there!', '2023-11-06 12:00:00'),
(13, 13, 14, 'Happy birthday! 🎉', '2023-11-07 04:00:00'),
(14, 14, 13, 'Thank you! 🥳', '2023-11-07 04:30:00'),
(15, 15, 16, 'Let us go for a hike this weekend.', '2023-11-08 13:45:00'),
(16, 16, 15, 'I am in! Where should we meet?', '2023-11-08 14:15:00'),
(17, 17, 18, 'Have you received the package?', '2023-11-09 09:20:00'),
(18, 18, 17, 'Yes, it arrived safely. Thanks!', '2023-11-09 10:00:00'),
(19, 19, 20, 'Do not forget to buy groceries on your way home.', '2023-11-10 15:30:00'),
(20, 20, 19, 'I will make a list. Anything specific you need?', '2023-11-10 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `NotificationID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Content` text NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricingrule`
--

CREATE TABLE `pricingrule` (
  `PricingRuleID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `RuleName` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `PropertyID` int(11) NOT NULL,
  `HostID` int(11) DEFAULT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`PropertyID`, `HostID`, `Title`, `Description`) VALUES
(21, 1, 'Cozy Apartment in the City', 'A comfortable apartment with great city views.'),
(22, 2, 'Seaside Villa with Pool', 'Luxury villa by the beach with a private pool.'),
(23, 3, 'Downtown Loft with Balcony', 'Spacious loft in the heart of the city.'),
(24, 4, 'Mountain Cabin Retreat', 'Rustic cabin in the mountains for a peaceful getaway.'),
(25, 5, 'Modern Condo in the Sky', 'Sleek condo with stunning city skyline views.'),
(26, 6, 'Charming Country Cottage', 'A quaint cottage in a peaceful countryside.'),
(27, 7, 'Luxury Penthouse Suite', 'A high-end penthouse with cityscape views.'),
(28, 8, 'Beachfront Bungalow', 'Cozy bungalow right on the beach.'),
(29, 9, 'Rural Farmhouse Getaway', 'Farmhouse in a serene rural setting.'),
(30, 10, 'Historic City Mansion', 'Elegant mansion in the heart of the historic district.'),
(31, 11, 'Ski Lodge Retreat', 'Ski-in/ski-out lodge for winter getaways.'),
(32, 12, 'Secluded Forest Cabin', 'Secluded cabin in the midst of the forest.'),
(33, 13, 'Lakefront Retreat', 'Lakefront property with stunning sunsets.'),
(34, 14, 'Urban Studio Apartment', 'Compact studio apartment in a lively neighborhood.'),
(35, 15, 'Rooftop Garden Oasis', 'Penthouse with a rooftop garden and city views.'),
(36, 16, 'Mountain View Chalet', 'Chalet with panoramic mountain views.'),
(37, 17, 'Eco-Friendly Retreat', 'Eco-conscious accommodation in a natural setting.'),
(38, 18, 'Tropical Paradise Villa', 'Villa surrounded by lush tropical gardens.'),
(39, 19, 'Historic Castle Stay', 'A unique stay in a historic castle.'),
(40, 20, 'Desert Oasis Retreat', 'Oasis-like property in the desert with a pool.');

-- --------------------------------------------------------

--
-- Table structure for table `propertyphoto`
--

CREATE TABLE `propertyphoto` (
  `PhotoID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `PhotoURL` varchar(255) NOT NULL,
  `Caption` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `propertyphoto`
--

INSERT INTO `propertyphoto` (`PhotoID`, `PropertyID`, `PhotoURL`, `Caption`) VALUES
(1, 21, 'https://example.com/photo1.jpg', NULL),
(2, 21, 'https://example.com/photo2.jpg', NULL),
(3, 22, 'https://example.com/photo3.jpg', NULL),
(4, 22, 'https://example.com/photo4.jpg', NULL),
(5, 23, 'https://example.com/photo5.jpg', NULL),
(6, 23, 'https://example.com/photo6.jpg', NULL),
(7, 24, 'https://example.com/photo7.jpg', NULL),
(8, 24, 'https://example.com/photo8.jpg', NULL),
(9, 25, 'https://example.com/photo9.jpg', NULL),
(10, 25, 'https://example.com/photo10.jpg', NULL),
(11, 26, 'https://example.com/photo11.jpg', NULL),
(12, 26, 'https://example.com/photo12.jpg', NULL),
(13, 27, 'https://example.com/photo13.jpg', NULL),
(14, 27, 'https://example.com/photo14.jpg', NULL),
(15, 28, 'https://example.com/photo15.jpg', NULL),
(16, 28, 'https://example.com/photo16.jpg', NULL),
(17, 29, 'https://example.com/photo17.jpg', NULL),
(18, 29, 'https://example.com/photo18.jpg', NULL),
(19, 30, 'https://example.com/photo19.jpg', NULL),
(20, 30, 'https://example.com/photo20.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `propertytype`
--

CREATE TABLE `propertytype` (
  `PropertyTypeID` int(11) NOT NULL,
  `TypeName` varchar(50) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratinghistory`
--

CREATE TABLE `ratinghistory` (
  `HistoryID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservationcalendar`
--

CREATE TABLE `reservationcalendar` (
  `CalendarID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Availability` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `ReviewText` text NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `BookingID`, `ReviewText`, `Rating`) VALUES
(1, 1, 'Wonderful place to stay. Highly recommended!', 5),
(2, 2, 'Great location by the beach, but could use some improvements.', 4),
(3, 3, 'Perfect loft in the city center.', 5),
(4, 4, 'Cabin was nice, but the heating was not working well.', 3),
(5, 5, 'Modern condo with fantastic views.', 4),
(6, 6, 'Charming cottage in a peaceful countryside setting.', 5),
(7, 7, 'Luxury penthouse exceeded our expectations.', 5),
(8, 8, 'Bungalow was nice, but a bit dated.', 3),
(9, 9, 'A perfect rural getaway for nature lovers.', 5),
(10, 10, 'Historic mansion with a touch of elegance.', 4),
(11, 11, 'Ski lodge is ideal for winter vacations.', 5),
(12, 12, 'Cabin in the forest is serene and beautiful.', 4),
(13, 13, 'The lakefront property was stunning.', 5),
(14, 14, 'Urban studio is cozy and convenient.', 4),
(15, 15, 'Rooftop garden was a hidden oasis.', 5),
(16, 16, 'Chalet with amazing mountain views.', 4),
(17, 17, 'Eco-friendly retreat for nature enthusiasts.', 5),
(18, 18, 'Tropical villa is a paradise in itself.', 4),
(19, 19, 'Staying in a historic castle was magical.', 5),
(20, 20, 'Desert oasis property is unique and relaxing.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `TagID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `FirstName`, `LastName`, `RegistrationDate`) VALUES
(1, 'john_doe', 'john.doe@example.com', 'John', 'Doe', '2023-10-01'),
(2, 'jane_smith', 'jane.smith@example.com', 'Jane', 'Smith', '2023-10-02'),
(3, 'mike_jones', 'mike.jones@example.com', 'Mike', 'Jones', '2023-10-03'),
(4, 'susan_adams', 'susan.adams@example.com', 'Susan', 'Adams', '2023-10-04'),
(5, 'chris_wilson', 'chris.wilson@example.com', 'Chris', 'Wilson', '2023-10-05'),
(6, 'lisa_brown', 'lisa.brown@example.com', 'Lisa', 'Brown', '2023-10-06'),
(7, 'robert_clark', 'robert.clark@example.com', 'Robert', 'Clark', '2023-10-07'),
(8, 'emily_parker', 'emily.parker@example.com', 'Emily', 'Parker', '2023-10-08'),
(9, 'david_anderson', 'david.anderson@example.com', 'David', 'Anderson', '2023-10-09'),
(10, 'jennifer_taylor', 'jennifer.taylor@example.com', 'Jennifer', 'Taylor', '2023-10-10'),
(11, 'william_martin', 'william.martin@example.com', 'William', 'Martin', '2023-10-11'),
(12, 'linda_lewis', 'linda.lewis@example.com', 'Linda', 'Lewis', '2023-10-12'),
(13, 'thomas_hall', 'thomas.hall@example.com', 'Thomas', 'Hall', '2023-10-13'),
(14, 'sarah_white', 'sarah.white@example.com', 'Sarah', 'White', '2023-10-14'),
(15, 'james_clark', 'james.clark@example.com', 'James', 'Clark', '2023-10-15'),
(16, 'mary_adams', 'mary.adams@example.com', 'Mary', 'Adams', '2023-10-16'),
(17, 'michael_smith', 'michael.smith@example.com', 'Michael', 'Smith', '2023-10-17'),
(18, 'susan_wilson', 'susan.wilson@example.com', 'Susan', 'Wilson', '2023-10-18'),
(19, 'daniel_brown', 'daniel.brown@example.com', 'Daniel', 'Brown', '2023-10-19'),
(20, 'jessica_davis', 'jessica.davis@example.com', 'Jessica', 'Davis', '2023-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `WishlistID` int(11) NOT NULL,
  `GuestID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`AmenityID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `GuestID` (`GuestID`);

--
-- Indexes for table `bookinghistory`
--
ALTER TABLE `bookinghistory`
  ADD PRIMARY KEY (`HistoryID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`GuestID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`HostID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`MessageID`),
  ADD KEY `SenderUserID` (`SenderUserID`),
  ADD KEY `ReceiverUserID` (`ReceiverUserID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`NotificationID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Indexes for table `pricingrule`
--
ALTER TABLE `pricingrule`
  ADD PRIMARY KEY (`PricingRuleID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`PropertyID`),
  ADD KEY `HostID` (`HostID`);

--
-- Indexes for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `propertytype`
--
ALTER TABLE `propertytype`
  ADD PRIMARY KEY (`PropertyTypeID`);

--
-- Indexes for table `ratinghistory`
--
ALTER TABLE `ratinghistory`
  ADD PRIMARY KEY (`HistoryID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `reservationcalendar`
--
ALTER TABLE `reservationcalendar`
  ADD PRIMARY KEY (`CalendarID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`WishlistID`),
  ADD KEY `GuestID` (`GuestID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`);

--
-- Constraints for table `bookinghistory`
--
ALTER TABLE `bookinghistory`
  ADD CONSTRAINT `bookinghistory_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `host`
--
ALTER TABLE `host`
  ADD CONSTRAINT `host_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`SenderUserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`ReceiverUserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Constraints for table `pricingrule`
--
ALTER TABLE `pricingrule`
  ADD CONSTRAINT `pricingrule_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostID`);

--
-- Constraints for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  ADD CONSTRAINT `propertyphoto_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);

--
-- Constraints for table `ratinghistory`
--
ALTER TABLE `ratinghistory`
  ADD CONSTRAINT `ratinghistory_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `ratinghistory_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);

--
-- Constraints for table `reservationcalendar`
--
ALTER TABLE `reservationcalendar`
  ADD CONSTRAINT `reservationcalendar_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
