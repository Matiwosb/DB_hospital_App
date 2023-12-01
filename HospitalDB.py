import sqlite3

# README! - This file creates the file "hospital.db" at startup.
#           To rerun this program, delete "hospital.db" before rerunning.


# connection = sqlite3.connect(':memory:')
# Connect to database
connection = sqlite3.connect('hospital.db')

# Create a cursor
cursor = connection.cursor()

# Create a Table
cursor.execute("""CREATE TABLE hospitals (
                hospital_id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                city INTEGER NOT NULL
            )""")

print("Table: hospitals CREATED SUCCESSFULLY...")

# Commit above command
#connection.commit()

cursor.execute("""CREATE TABLE departments (
                department_id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                building INTEGER NOT NULL,
                floor INTEGER NOT NULL,
                hospital_id INTEGER,
                FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
            )""")

print("Table: departments CREATED SUCCESSFULLY...")

#connection.commit()

cursor.execute("""CREATE TABLE practitioners (
                practitioner_id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                profession TEXT NOT NULL,
                specialty TEXT,
                department_id INTEGER,
                FOREIGN KEY (department_id) REFERENCES departments(department_id)
            )""")

print("Table: practitioners CREATED SUCCESSFULLY...")

#connection.commit()

# There is no DATE datatype in sqlite, so, TEXT datatype is used to simulate it.
cursor.execute("""CREATE TABLE patients (
                patient_id INTEGER PRIMARY KEY AUTOINCREMENT,
                first_name TEXT NOT NULL,
                last_name TEXT NOT NULL,
                birthdate TEXT,
                gender TEXT,
                diagnosis TEXT,
                triage TEXT
            )""")

print("Table: patients CREATED SUCCESSFULLY...")

#connection.commit()

cursor.execute("""CREATE TABLE visits (
                visit_id INTEGER PRIMARY KEY AUTOINCREMENT,
                visit_date TEXT NOT NULL,
                patient_id INTEGER,
                practitioner_id INTEGER,
                FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
                FOREIGN KEY (practitioner_id) REFERENCES practitioners(practitioner_id)
            )""")

print("Table: visits CREATED SUCCESSFULLY...")

#connection.commit()

many_hospitals = [
                    ('Atmore Community Hospital', 'Atmore'), 
                    ('Bryce Hospital', 'Tuscaloosa'),
                    ('Crossbridge Behavioral Health', 'Montgomery'),
                    ('Arizona State Hospital', 'Pheonix'),
                    ('California Hospital Medical Center', 'Los Angeles'),
                    ('Aspen Valley Hospital', 'Aspen'),
                    ('Connecticut Children’s Medical Center', 'Hartford'),
                    ('Delaware Hospital', 'Wilmington'),
                    ('Riverside Hospital', 'Wilmington'),
                    ('Baptist Hospital of Miami', 'Miami')
                ]

cursor.executemany("INSERT INTO hospitals (name, city) VALUES (?, ?)", many_hospitals)

print("Table Values: hospitals INSERTED SUCCESSFULLY...")
#connection.commit()


many_departments = [
                        ('Burn Center', 'Emergency Room', 1, 1),
                        ('Trauma Center', 'Emergency Room', 1, 2),
                        ('Fetal Surgery', 'NICU', 4, 3),
                        ('Cardiology', 'Operating Room', 3, 4),
                        ('Neurology', 'Operating Room', 3, 5),
                        ('General Surgeon', 'Operating Room', 3, 6),
                        ('ENT', 'Emergency Room', 5, 7),
                        ('Radiologist', 'Lab', 2, 8),
                        ('Plastic Surgeon', 'Operating Room',3, 9),
                        ('OBGYN', 'Womans Health Center', 4, 10),
                    ]

cursor.executemany("INSERT INTO departments (name, building, floor, hospital_id) VALUES (?, ?, ?, ?)", many_departments)


print("Table Values: departments INSERTED SUCCESSFULLY...")
#connection.commit()


many_practitioners = [
                        ('Dr. Smith', 'Physician', 'Cardiology', 1),
                        ('Dr. Johnson', 'Surgeon', 'Orthopedics', 2),
                        ('Dr. Williams', 'Pediatrician', 'Pediatrics', 3),
                        ('Dr. Davis', 'Oncologist', 'Oncology', 4),
                        ('Dr. MacKenzie', 'Phychologist', 'Psychology', 5),
                        ('Dr. Lacroix', 'Surgeon', 'Trauma', 1),
                        ('Dr. Hazelton', 'Surgeon', 'Trauma', 2),
                        ('Dr. Sharkey', 'Surgeon', 'Trauma', 3),
                        ('Dr. Worth', 'Surgeon', 'Trauma', 4),
                        ('Dr. Dickenson', 'Surgeon', 'Trauma', 5),
                    ]

cursor.executemany("INSERT INTO practitioners (name, profession, specialty, department_id) VALUES (?, ?, ?, ?)", many_practitioners)


print("Table Values: practitioners INSERTED SUCCESSFULLY...")
#connection.commit()


many_patients = [
                        ('Brady', 'Goodwin', '1990-11-08', 'Male', 'IBS', 'Diahrea'),
                        ('Jannis', 'Ian', '1385-08-22', 'Female', 'IBS', 'Diahrea'),
                        ('Lily', 'Mulls', '2001-10-28', 'Female', 'Allergies', 'Sore Throat'),
                        ('Adam', 'Angelo', '1990-06-25', 'Male', 'Tonsilitis', 'Sore Throat'),
                        ('Mike', 'Grayson', '2000-11-30', 'Male', 'D.O.A', 'N/A'),
                        ('Andria', 'Luconia', '2006-08-18', 'Female', 'D.O.A', 'N/A'),
                        ('Emma', 'Harambe', '2005-08-28', 'Female', 'Allergies', 'Sneezing'),
                        ('Christian', 'Cimino', '1999-05-15', 'Male', 'Hypochondriac', 'Psych Consult'),
                        ('Michael', 'Scott', '1972-11-28', 'Male', 'Scratched Cornea', 'Blurred Vision'),
                        ('Tyler', 'Bernard', '1991-07-28', 'Male', 'Concussion', 'Headaches')
                    ]

cursor.executemany("INSERT INTO patients (first_name, last_name, birthdate, gender, diagnosis, triage) VALUES (?, ?, ?, ?, ?, ?)", many_patients)


print("Table Values: patients INSERTED SUCCESSFULLY...")

"""
# Print test of all rows in patients Table (Successful)

cursor.execute("SELECT * FROM patients")
patient_list = cursor.fetchall()
for each_patient in patient_list:
    print(each_patient)
"""
connection.commit()

connection.close()

