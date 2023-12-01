
import sqlite3

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

def add_patient_visit(connection, visit_date, patient_id, practitioner_id):
    cursor = connection.cursor()
    cursor.execute("INSERT INTO visits (visit_date, patient_id, practitioner_id) VALUES (?, ?, ?)", (visit_date, patient_id, practitioner_id))
    connection.commit()
    print("New visit added successfully.")

def update_patient_data(connection, patient_id, first_name, last_name, birthdate, gender, diagnosis, triage):
    cursor = connection.cursor()
    cursor.execute("UPDATE patients SET first_name=?, last_name=?, birthdate=?, gender=?, diagnosis=?, triage=? WHERE patient_id=?", (first_name, last_name, birthdate, gender, diagnosis, triage, patient_id))
    connection.commit()
    print("Patient data updated successfully.")


def show_patient_visits(connection, first_name, last_name):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM visits JOIN patients ON visits.patient_id = patients.patient_id WHERE patients.first_name=? AND patients.last_name=?", (first_name, last_name))
    visits = cursor.fetchall()
    for visit in visits:
        print(visit)

def show_practitioners_in_department(connection, department_name):
    cursor = connection.cursor()
    cursor.execute("SELECT practitioners.name, practitioners.profession, practitioners.specialty FROM practitioners LEFT JOIN departments ON practitioners.department_id=departments.department_id WHERE departments.name=?", (department_name,))
    practitioners = cursor.fetchall()
    for practitioner in practitioners:
        print(practitioner)

def find_hospitals_with_department(connection, department_name):
    cursor = connection.cursor()
    cursor.execute("SELECT hospitals.name FROM hospitals INNER JOIN departments ON hospitals.hospital_id=departments.hospital_id WHERE departments.name=?", (department_name,))
    hospitals = cursor.fetchall()
    for hospital in hospitals:
        print(hospital)

def main_menu(connection):
    while True:
        print("\nHospital Database Management System")
        print("1. Add Patient Visit")
        print("2. Update Patient Data")
        print("3. Show Patient's Visits")
        print("4. Show Practitioners in a Department")
        print("5. Find Hospitals with a Specific Department")
        print("6. Exit")

        choice = input("Enter your choice: ")

        if choice == '1':
            visit_date = input("Enter visit date (YYYY-MM-DD): ")
            patient_id = int(input("Enter patient ID: "))
            practitioner_id = int(input("Enter practitioner ID: "))
            add_patient_visit(connection, visit_date, patient_id, practitioner_id)

        elif choice == '2':
            patient_id = int(input("Enter patient ID to update: "))
            first_name = input("Enter first name: ")
            last_name = input("Enter last name: ")
            birthdate = input("Enter birthdate (YYYY-MM-DD): ")
            gender = input("Enter gender: ")
            diagnosis = input("Enter diagnosis: ")
            triage = input("Enter triage: ")
            update_patient_data(connection, patient_id, first_name, last_name, birthdate, gender, diagnosis, triage)

        elif choice == '3':
            first_name = input("Enter patient's first name: ")
            last_name = input("Enter patient's last name: ")
            show_patient_visits(connection, first_name, last_name)

        elif choice == '4':
            department_name = input("Enter department name: ")
            show_practitioners_in_department(connection, department_name)

        elif choice == '5':
            department_name = input("Enter department name to search hospitals: ")
            find_hospitals_with_department(connection, department_name)

        elif choice == '6':
            print("Exiting the program.")
            break

        else:
            print("Invalid choice. Please try again.")

# if __name__ == "__main__":
#     connection = sqlite3.connect('hospital.db')
#     main_menu(connection)
#     connection.close()