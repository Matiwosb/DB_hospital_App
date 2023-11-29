-- Insert sample data into the hospitals table
INSERT INTO hospitals (name, city) VALUES
    ('Atmore Community Hospital', 'Atmore'); 
    ('Bryce Hospital', 'Tuscaloosa'); 
    ('Crossbridge Behavioral Health', 'Montgomery'); 
    (‘Arizona State Hospital’, ‘Pheonix’); 
    (‘California Hospital Medical Center’, ‘Los Angeles’); 
    (‘Aspen Valley Hospital’, ‘Aspen’); 
    (‘Connecticut Children’s Medical Center’, ‘Hartford)’; 
    (‘Delaware Hospital’, ‘Wilmington’); 
    (‘Riverside Hospital’, ‘Wilmington’); 
    (‘Baptist Hospital of Miami’, ‘Miami’); 
    (‘Miami City Hospital’, ‘Miami’); 
    (‘Tallahassee Memorial Hospital’, ‘Tallahassee’); 
    (‘Orlando Regional Medical Center’, ‘Orlando’); 
    (‘AdventHealth Gordon’, ‘Calhoun’); 
    (‘AdventHealth Gordon’, ‘Chatsworth’); 
    (‘Augusta University Children's Hospital of Georgia’, ‘Augusta’); 
    (‘Bleckley Memorial Hospital’, ‘Cochran’); 
    (‘Candler Hospital’, ‘Savannah’); 
    (‘Crisp Regional Hospital’, ‘Cordele’); 
    (‘Donalsonville Hospital’, ‘Donalsonville’); 
    (‘Effingham Hospital’, ‘Springfield’); 
    (‘Emory University Hospital’, ‘Atlanta’); 
    (‘Hamilton Medical Center’, ‘Dalton’); 
    (‘Hilo Medical Center’, ‘Hilo’); 
    (‘Kohala Hospital’, ‘Kapaau’); 
    (‘Cancer Institute of Maui’, ‘Wailuku’); 
    (‘REHAB Hospital of The Pacific’, ‘Honolulu’); 
    (‘The Queen’s Medical Center’, ‘Honolulu’); 
    (‘Bear Lake Memorial Hospital’, ‘Montpelier’); 
    (‘Boise Veterans Affairs Medical Center’, ‘Boise’); 
    (‘Bonner General Hospital’, ‘Sand Point’); 
    (‘Idaho Falls Community Hospital’, ‘Idaho Falls’); 
    (‘Madison Memorial Hospital’, ‘Rexburg’); 
    (‘Saint Alphonsus Regional Medical Center’, ‘Boise’); 
    (‘Advocate Condell Medical Center’, ‘Libertyville’); 
    (‘Advocate Good Shepherd Hospital’, ‘Barrington’); 
    (‘Advocate Trinity Hospital’, ‘Chicago’); 
    (‘Anderson Hospital’, ‘Maryville’); 
    (‘Carle Eureka Hospital’, ‘Eureka’); 
    (‘Crawford Memorial Hospital’, ‘Robinson’); 
    (‘Fairfield Memorial Hospital’, ‘Fairfield’); 
    (‘Garfield Park Behavioral Hospital’, ‘Chicago’); 
    (‘Harrisburg Medical Center’, ‘Harrisburg’); 
    (‘Hartgrove Hospital’, ‘Chicago’); 
    (‘East Jefferson General Hospital’, ‘Metairie’); 
    (‘Tulane-Lakeside Hospital’, ‘Metairie’); 
    (‘Brentwood Hospital’, ‘Shreveport’); 
    (‘Shriners Hospital’, ‘Shreveport’); 
    (‘Maine General Medical Center’, ‘Augusta’); 
    (‘Mount Desert Island Hospital’, ‘Bar Harbor’); 
    (‘Southern Maine HealthCare’, ‘Biddeford’); 
    (‘Grace Medical Center’, ‘Baltimore’); 
    (‘Johns Hopkins Hospital’, ‘Baltimore’); 
    (‘Atlantic General Hospital’, ‘Berlin’); 
    (‘Amesbury Health Center’, ‘Amesbury’); 
    (‘Boston Medical Center’, ‘Boston’); 
    (‘Massachusetts General Hospital’, ‘Boston’); 

     -- Insert sample data into the departments table
  INSERT INTO departments (name, building, floor) VALUES
  (‘Burn Center’, ‘Emergency Room’, 1); 
  (‘Trama Center’, ‘Emergency Room’, 1); 
  (‘Fetal Surgery’, ‘NICU’, 4); 
  (‘Cardiology’, ‘Operating Room’, 3); 
  (‘Neurology’, ‘Operating Room’, 3); 
  (‘General Surgeon’, ‘Operating Room’, 3); 
  (‘ENT’, ‘Emergency Room’, 5);
  (‘Radiologist’, ‘Lab’, 2); 
  (‘Plastic Surgeon’, ‘Operating Room’,3); 
  (‘OBGYN’, ‘Womans Health Center’, 4); 
  (‘PSYCH’, ‘Psychiatric Hospital’, 2); 
  (‘Dermatology’, ‘Skincare Building’, 3); 
  (‘Oncologist’, ‘Lab’, 2); 
  (‘Allergy and Immunology’, ‘Emergency Room’, 4); 
  (‘Anesthesiologist’, ‘Operating Room’, 1); 
  (‘Endocrinology’, ‘Scrub Room’, 3);   
  (‘Gynecology’, ‘Womans Health Center’, 6); 
  (‘Orthopedic Surgery’, ‘Trauma Center’, 2); 
  (‘Burn Center’, ‘Trauma Center’, 4); 
  (‘Pathology’, ‘Lab Center’, 3); 
  (‘Pediatrics’, ‘Childrens Hospital’, 5); 
  (‘Rehabilitation’, ‘Recovery Center’, 3); 
  (‘Nursing’, ‘Nurses Station’, 3); 
  (‘Sleep Medicine’, ‘ICU’, 2); 
  (‘Urology’, ‘Scrub Room’, 2); 
  (‘Endocrinologist’, ‘MRI Room’, 3); 
  (‘Gastroenterologist’, ‘Patient Care Facility’, 4); 
  (‘Geriatrician’, ‘Emergency Room’, 3); 
  (‘Hematologist’, ‘Emergency Room’, 2); 
  (‘Infectious Diseases’, ‘Emergency Room’, 1); 
  (‘Nephrologist’, ‘Emergency Room’, 5); 
  (‘Palliative care doctor’, ‘Emergency Room’, 6); 
  (‘Physiatrist’, ‘Emergency Room’, 3); 
  (‘Pulmonologist’, ‘Emergency Room’, 2); 
  (‘Rheumatologist’, ‘Emergency Room’, 1); 
  (‘Neonatologist’, ‘Emergency Room’, 2); 
  (‘Colorectal Surgery’, ‘Emergency Room’, 3); 
  (‘Vascular Surgery’, ‘Emergency Room’, 4); 
  (‘Ophthalmologist’, ‘Emergency Room’, 1); 
  (‘Pathologist’, ‘Labs’, 5); 
  (‘Podiatrist’, ‘Emergency Room’, 4); 
  (‘Transplant Surgery’, ‘Emergency Room’, 3); 
  (‘Reproductive endocrinology’,  ‘Emergency Room’, 1); 
  (‘Information Technologies’, ‘Emergency Room’, 2); 
  (‘Paramedics’, ‘Trauma Site’, 3); 
  (‘Nocturnist’, ‘Emergency Room’, 3); 
  (‘Intern’, ‘Emergency Room’, 4); 
  (‘First Year Resident’, ‘School’, 5); 
  (‘Second Year Resident’, ‘School’, 1); 
  (‘Third Year Resident’, ‘School’, 1); 
  (‘Fourth Year Resident’, ‘School’, 3); 
  (‘Fifth Year Resident’, ‘School’, 2); 
  (‘Chief of Surgery’, ‘Chiefs Office’, 3); 
  (‘Lunch Lady’, ‘Cafeteria’, 4); 
  (‘Research Specialist’, ‘Research facility’, 1); 
  (‘Travel Nurse’, ‘Helipad’, 3); 
  (‘Physical Therapist’, ‘Emergency Room’, 3); 
  (‘Diagnosis Specialist’, ‘Emergency Room’, 1);  
  (‘Primary Care Doctor’, ‘Doctors Office’, 1); 

  -- Insert sample data into the practitioners table
INSERT INTO practitioners (name, profession, specialty) VALUES
    ('Dr. Smith', 'Physician', 'Cardiology'),
    ('Dr. Johnson', 'Surgeon', 'Orthopedics'),
    ('Dr. Williams', 'Pediatrician', 'Pediatrics'),
    ('Dr. Davis', 'Oncologist', 'Oncology');
    ('Dr. MacKenzie', 'Phychologist', 'Psychology'),
    ('Dr. Lacroix', 'Surgeon', 'Trauma'),
    ('Dr. Hazelton', 'Surgeon', 'Trauma'),
    ('Dr. Sharkey', 'Surgeon', 'Trauma');
    ('Dr. Worth', 'Surgeon', 'Trauma'),
    ('Dr. Dickenson', 'Surgeon', 'Trauma'),
    ('Dr. Dickens', 'Surgeon', 'Trauma'),
    ('Dr. Rausch', 'Oncologist', 'Oncology');
    ('Dr. Geary', 'Oncologist', 'Oncology'),
    ('Dr. Grissom', 'Oncologist', 'Oncology'),
    ('Dr. Karev', 'Oncologist', 'Oncology'),
    ('Dr. Bellu', 'Oncologist', 'Oncology'),
    ('Dr. Bounto', 'Oncologist', 'Oncology'),
    ('Dr. Renton', 'Surgeon', 'Orthopedics'),
    ('Dr. Jeanne', 'Surgeon', 'Orthopedics'),
    ('Dr. Enzo', 'Dermatologist', 'Dermatology'),
    ('Dr. Esper', 'Dermatologist', 'Dermatology'),
    ('Dr. Richmonf', 'Dermatologist', 'Dermatology'),
    ('Dr. St. Hilaire', 'Dermatologist', 'Dermatology'),
    ('Dr. Torname', 'Dermatologist', 'Dermatology'),
    ('Dr. McGinn', 'Dermatologist', 'Dermatology'),
    ('Dr. Hayes', 'Pathologist', 'Pathology'),
    ('Dr. Glynn', 'Pathologist', 'Pathology'),
    ('Dr. Desmond', 'Pathologist', 'Pathology'),
    ('Dr. Barnett', 'Pathologist', 'Pathology'),
    ('Dr. Murphy', 'Surgeon', 'Orthopedics'),
    ('Dr. Lumar', ‘Ophthalmologist’, ‘Ophthalmology’),
    ('Dr. Holmes', ‘Ophthalmologist’, ‘Ophthalmology’),
    ('Dr. Biana', ‘Ophthalmologist’, ‘Ophthalmology’),
    ('Dr. Kelso', ‘Ophthalmologist’, ‘Ophthalmology’),
    ('Dr. Gray', ‘Ophthalmologist’, ‘Ophthalmology’),
    ('Dr. White', ‘Ophthalmologist’, ‘Ophthalmology’);
    ('Dr. Black', ‘Ophthalmologist’, ‘Ophthalmology’),
    ('Dr. Jamison', 'Neurologist', 'Neurology'),
    ('Dr. Frank', ‘Neonatology', ‘Neonatologist'),
    ('Dr. Levine', ‘Neonatology', ‘Neonatologist'),
    ('Dr. Farsky', ‘Neonatology', ‘Neonatologist'),
    ('Dr. Cunningham', ‘Neonatology', ‘Neonatologist'),
    ('Dr. Boniol', ‘Neonatology', ‘Neonatologist'),
    ('Dr. Wilson', ‘Neonatology', ‘Neonatologist');
    ('Dr. Jordan', ‘Rheumatology’, ‘Rheumatologist’),
    ('Dr. George', ‘Rheumatology’, ‘Rheumatologist’),
    ('Dr. Hamilton', ‘Rheumatology’, ‘Rheumatologist’),
    ('Dr. Deluca', ‘Rheumatology’, ‘Rheumatologist’),
    ('Dr. Helm', ‘Rheumatology’, ‘Rheumatologist’),
    ('Dr. Harambe', ‘Rheumatology’, ‘Rheumatologist’),
    ('Dr. Mender', ‘Pulmonology’, ‘Pulmonologist’),
    ('Dr. Bork', ‘Pulmonology’, ‘Pulmonologist’);
    ('Dr. Landon', ‘Pulmonology’, ‘Pulmonologist’),
    ('Dr. Jones', ‘Pulmonology’, ‘Pulmonologist’),
    ('Dr. France', ‘Pulmonology’, ‘Pulmonologist’),
    ('Dr. Fork', ‘Pulmonology’, ‘Pulmonologist’),
    ('Dr. James', ‘Pulmonology’, ‘Pulmonologist’),
    ('Dr. Pena', 'Surgeon', 'ENT'),
    ('Dr. Diamond', 'Surgeon', 'ENT'),
    ('Dr. Henderson', 'Surgeon', 'ENT');
    ('Dr. Russo', 'Surgeon', 'ENT'),
    ('Dr. Cardenes', 'Surgeon', 'ENT'),
    ('Dr. Patel', 'Surgeon', 'ENT'),
    ('Dr. Mulry', 'Surgeon', 'General');
    ('Dr. Sanddown', 'Resident', 'Cardiology'),
    ('Dr. Windham', 'Resident', 'Pathology'),
    ('Dr. Pelham', 'Resident', 'Radiology'),
    ('Dr. Methuen', 'Resident', 'Oncology');
    ('Dr. Derry', 'Cheif', 'Radiology'),
    ('Dr. Nash', 'Cheif', 'Orthopedics'),
    ('Dr. Boston', 'Chief', 'Pediatrics'),
    ('Dr. Haverhill', 'Intern', 'Oncology');
    ('Dr. Salem', 'Intern', 'Pathology'),
    ('Dr. Lowell', 'Intern', 'Orthopedics'),
    ('Dr. Foreman', 'Pathologist', 'Pathology'),
    ('Dr. Burke', 'Radiologist', 'Radiology');

     -- Insert sample data into the patients table
INSERT INTO patients (first_name, last_name, birthdate, gender, diagnosis, triage) VALUES
    ('Brady', 'Goodwin', '1990-11-08', 'Male', 'IBS', 'Diahrea'),
    ('Jannis', 'Ian', '1385-08-22', 'Female', 'IBS', 'Diahrea'),
    ('Michael', 'Leo', '2022-01-10', 'Male', 'IBS', 'Diahrea'),
    ('Emily', 'Diverson', '1995-03-28', 'Female', 'IBS', 'Diahrea');
    ('Josue', 'Portillo', '2000-05-15', 'Male', 'IBS', 'Diahrea'),
    ('Hannah', 'Huyck', '2015-08-30', 'Female', 'IBS', 'Diahrea'),
    ('Mica', 'Magic', '2010-06-10', 'Male', 'IBS', 'Diahrea'),
    ('Lily', 'Mulls', '2001-10-28', 'Female', 'Allergies', 'Sore Throat');
    ('Adam', 'Angelo', '1990-06-25', 'Male', 'Tonsilitis', 'Sore Throat'),
    ('Josephina', 'Shena', '1985-09-22', 'Female', 'Tonsilitis', 'Sore Throat'),
    ('Atticus', 'Henry', '2002-10-30', 'Male', 'Tonsilitis', 'Sore Throat'),
    ('Emerson', 'Poulin', '2007-08-28', 'Female', 'Tonsilitis', 'Sore Throat');
    ('Donald', 'Duck', '1990-05-25', 'Male', 'Tonsilitis', 'Sore Throat'),
    ('Gianna', 'Sellar', '1945-08-22', 'Female', 'Tonsilitis', 'Sore Throat'),
    ('Brice', 'Hummer', '1972-11-10', 'Male', 'Tonsilitis', 'Sore Throat'),
    ('Bryanna', 'Hutcherson', '1985-03-01', 'Female', 'Tonsilitis', 'Sore Throat');
    ('Andrew', 'Luciano', '1990-02-09', 'Male', 'Tonsilitis', 'Sore Throat'),
    ('Jane', 'Smith', '1985-08-22', 'Female', 'Tonsilitis', 'Sore Throat'),
    ('Mike', 'Grayson', '2000-11-30', 'Male', 'D.O.A', 'N/A'),
    ('Andria', 'Luconia', '2006-08-18', 'Female', 'D.O.A', 'N/A');
    ('Jake', 'Brady', '1999-10-15', 'Male', 'D.O.A', 'N/A'),
    ('Sydney', 'Emerson', '1985-08-22', 'Female', 'D.O.A', 'N/A'),
    ('Matt', 'McCloskey', '1982-12-29', 'Male', 'D.O.A', 'N/A'),
    ('Kylie', 'Greely', '1995-03-28', 'Female', 'D.O.A', 'N/A');
    ('Eric', 'Cartman', '1990-05-15', 'Male', 'D.O.A', 'N/A'),
    ('April', 'Kepner', '1985-08-22', 'Female', 'D.O.A', 'N/A'),
    ('Jackson', 'Avery', '1942-12-10', 'Male', 'D.O.A', 'N/A'),
    ('Emma', 'Harambe', '2005-08-28', 'Female', 'Allergies', 'Sneezing');
    ('Christian', 'Cimino', '1999-05-15', 'Male', 'Hypochondriac', 'Psych Consult'),
    ('Serena', 'Watson', '1985-04-22', 'Female', 'Blindness', 'Blurred Vision'),
    ('Deshaun', 'Watson', '1972-09-30', 'Male', 'Blindness', 'Blurred Vision'),
    ('Taylor', 'Swift', '1999-06-28', 'Female', 'Blindness', 'Blurred Vision');
    ('Kanye', 'West', '1973-05-05', 'Male', 'Blindness', 'Blurred Vision'),
    ('Kim', 'West', '2001-08-08', 'Female', 'Fractured Arm', 'Numbness in Fingers'),
    ('Michael', 'Jackson', '1922-11-04', 'Fractured Arm', 'Numbness in Fingers'),
    ('Kimberly', 'Lopez', '1905-03-03', 'Fractured Arm', 'Numbness in Fingers');
    ('Atticus', 'Link', '2000-10-08', 'Male', 'Fractured Arm', 'Numbness in Fingers'),
    ('Jane', 'Snow', '1988-08-01', 'Female', 'Fractured Arm', 'Numbness in Fingers'),
    ('Michael', 'Lincoln', '2011-11-11', 'Male', 'Influenza', 'Coughing Blood'),
    ('Emily', 'Williams', '1995-03-28', 'Female', 'Tumor', 'Hullocinations');
    ('John', 'Powers', '1909-10-15', 'Male', 'Blindness', 'Blurred Vision'),
    ('Jane', 'Smith', '1985-08-22', 'Female', 'Fractured Arm', 'Yellow'),
    ('Mikey', 'Glynn', '1972-08-16', 'Male', 'Nose Reconstruction', 'Deviated Septum'),
    ('Emily', 'Augusta', '1996-08-28', 'Female', 'Allergies', 'Sneezing');
    ('Nick', 'Harris', '1990-09-30', 'Male', 'Migraines', 'Low White Blood Cells'),
    ('Callie', 'Torres', '1985-08-22', 'Female', 'Fractured Leg', 'Leg Pains'),
    ('Michael', 'Jordan', '1922-01-10', 'Male', 'COVID', 'Flu Like Symptoms'),
    ('Lauren', 'Willis', '1915-03-28', 'Female', 'Tumor', 'Hullocinations');
    ('Kate', 'Danta', '1990-05-30', 'Female', 'Depression', 'Sadness'),
    ('Emily', 'Panz', '1965-11-22', 'Female', 'Hand Tremor', 'Anxiety'),
    ('Jordan', 'McGary', '2001-11-10', 'Male', 'Tumor', 'Fainting'),
    ('Giana', 'Berrioa', '2005-03-28', 'Female', 'Asthma', 'Breathing Trouble');
    ('Delaney', 'York', '1990-05-15', 'Female', 'Asthma', 'Trouble Breathing'),
    ('Anna', 'Brown', '2003-08-22', 'Female', 'Fractured Leg', 'Leg Pain'),
    ('Blake', 'Harvey', '1962-11-10', 'Male', 'Tonsilitis', 'Sore Throat'),
    ('Oscar', 'Humphrey', '1985-12-28', 'Male', 'Allergies', 'Sore Throat');
    ('John', 'Downes', '1999-05-15', 'Male', 'Brain Tumor', 'Headaches'),
    ('Jordan', 'Scott', '1975-08-22', 'Female', 'IBS', 'Diahrea'),
    ('Michael', 'Scott', '1972-11-28', 'Male', 'Scratched Cornea', 'Blurred Vision'),
    ('Tyler', 'Bernard', '1991-07-28', 'Male', 'Concussion', 'Headaches');

     -- Insert sample data into the visits table
INSERT INTO visits (visit_date, patient_id, practitioner_id) VALUES
    ('2023-01-10', 1, 71),
    ('2023-01-15', 2, 70),
    ('2023-01-20', 3, 69),
    ('2023-01-25', 4, 68),
    ('2023-01-10', 5, 67),
    ('2023-02-11, 6, 66),
    ('2023-02-11', 7, 66),
    ('2023-02-12', 8, 65),
    ('2023-02-13', 9, 64),
    ('2023-03-14', 10, 63),
    ('2023-03-15', 11, 62),
    ('2023-03-16', 12, 61),
    ('2023-03-17', 13, 60),
    ('2023-03-18', 14, 59),
    ('2023-03-19', 15, 58),
    ('2023-04-21', 16, 57),
    ('2023-04-24', 17, 56),
    ('2023-04-28', 18, 55),
    ('2023-04-30', 19, 54),
    ('2023-04-02', 20, 53),
    ('2023-05-08', 21, 52),
    ('2023-05-09', 22, 51),
    ('2023-05-20', 23, 50),
    ('2023-05-10', 24, 49),
    ('2023-06-13', 25, 48),
    ('2023-06-15', 26, 47),
    ('2023-06-16', 27, 46),
    ('2023-06-18', 28, 45),
    ('2023-06-20', 29, 44),
    ('2023-06-22', 30, 43),
    ('2023-06-23', 31, 42),
    ('2023-06-24', 32, 41),
    ('2023-07-25', 33, 40),
    ('2023-07-27', 34, 39),
    ('2023-07-29', 35, 38),
    ('2023-07-30', 36, 37),
    ('2023-07-01', 37, 36),
    ('2023-07-05', 38, 35),
    ('2023-07-08', 39, 34),
    ('2023-07-09', 40, 33),
    ('2023-07-10', 41, 32),
    ('2023-08-15', 42, 31),
    ('2023-08-13', 43, 30),
    ('2023-08-16', 44, 29),
    ('2023-08-21', 45, 28),
    ('2023-08-22', 46, 27),
    ('2023-08-23', 47, 26),
    ('2023-09-25', 48, 25),
    ('2023-09-26', 49, 24),
    ('2023-09-29', 50, 23),
    ('2023-09-30', 51, 22),
    ('2023-09-01', 52, 21),
    ('2023-09-03', 53, 20),
    ('2023-09-05', 54, 19),
    ('2023-10-08', 55, 18),
    ('2023-10-09', 56, 17),
    ('2023-10-10', 57, 16),
    ('2023-10-12', 58, 15),
    ('2023-10-13', 59, 14),
    ('2023-10-14', 60, 13),
    ('2023-11-16', 61, 12),
    ('2023-11-18', 62, 11),
    ('2023-11-17', 63, 10),
    ('2023-11-19', 64, 9),
    ('2023-11-21', 65, 8),
    ('2023-11-22', 66, 7),
    ('2023-12-24', 67, 6),
    ('2023-12-25', 68, 5),
    ('2023-12-26', 69, 4),
    ('2023-12-27', 70, 3),
    ('2023-12-28', 71, 2),
    ('2023-12-31', 72, 1);
