CREATE TABLE `faculty_school` (
  `faculty_school_ID` INT AUTO_INCREMENT,
  `faculty_school_campus` VARCHAR(45),
  `faculty_school_name` VARCHAR(45),
  PRIMARY KEY (`faculty_school_ID`, `faculty_school_campus`)
);
