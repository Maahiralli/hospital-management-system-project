

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'mahir', 'mahir10', '28-04-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Dentist', 7, 6, 600, '2022-04-29', '9:15 AM', '2022-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Cardiologists', 5, 5, 8050, '2022-04-08', '1:00 PM', '2022-05-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2022-04-30', '5:30 PM', '2022-05-10 18:41:34', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'issac', 'Nairobi', '500', 0785703354, 'issac@gmail.com',md5('issack123'), '2022-04-29 06:25:37', '2022-04-30 12:11:05'),
(2, 'Homeopath', 'kevin ', 'Nairobi', '600', 0747483647, 'kevin@gmail.com', md5('kevin2022'), '2022-04-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Gloria', 'Nakuru', '1200', 0736907699, 'gloria@gmail.com', md5('gloria40'), '2022-04-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'cardiologists', 'Rajab ', 'Naivasha', '200', 0786874388, 'rajab@gmail.com', md5('rajab@123'), '2022-04-07 08:08:58', '2022-04-23 18:17:25'),
(5, 'pediatricians', 'Ahmed', 'kisumu', '600', 0734567890, 'ahmed@gmail.com', md5('ahmedali11'), '2022-04-23 17:57:43', '2022-04-23 18:06:06'),
(8, 'pediatricians', 'amin', 'kisumu', '600', 0734567890, 'amin@gmail.com', md5('ahmedali11'), '2022-04-23 17:57:43', '2022-04-23 18:06:06'),
(6, 'Dermatologist', 'Suwez', 'Nairobi', '500', 0786945390, 'suwez@gmail.com', md5('suwez001'), '2022-04-10 18:37:47', '2022-04-10 18:38:10');


-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2022-04-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2022-04-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2022-04-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2022-03-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'cardiologist', '2022-05-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2022-04-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2022-03-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'pathologists ', '2022-04-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2022-04-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'pediatrician', '2022-03-23 17:51:06', '2022-03-23 17:55:06'),
(12, 'Dermatologist', '2022-04-10 18:36:36', '2022-05-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Maahir Alli', 'mahir@gmail.com', 0798653482, ' This is sample text for the test.', '2022-04-29 19:03:08', 'message recieved', '2022-04-30 12:55:23', 1);



-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2022-04-06 04:20:07');


-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'John Doe', 0758968789, 'john@gmail.com', 'Male', 'china Apartment, SOUTH B, Nairobi', 26, 'He is diabetic patient', '2022-04-04 21:38:06', '2022-04-06 06:48:05'),
(2, 5, 'Hamisi Amadi', 0784537979, 'hamisi@gmail.com', 'Female', 'ABC Apartment ,Embakasi, Nairobi', 39, 'No', '2022-04-05 10:40:13', '2022-04-05 11:53:45');


-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Janet Alai', 'pangani  ', 'Nairobi', 'female', 'janet@gmail.com', md5('janetalai1'), '2022-04-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amerix', ' Westlands', ' Nairobi', 'male', 'amerix@gmail.com', md5('amerix10'), '2022-04-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Wesley Mutinda', 'Parklands ', ' Nairobi', 'male', 'wesley@gmail.com', md5('wesleymutinda'), '2022-04-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amina Hassan', 'Eastleigh  ', 'Nairobi', 'Female', 'amina@gmail.com', md5('aminahassan'), '2022-04-07 08:00:26', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



 hb hb bh bh 
