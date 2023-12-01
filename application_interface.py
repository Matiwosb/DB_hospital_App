
import sqlite3

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

if __name__ == "__main__":
    connection = sqlite3.connect('hospital.db')
    main_menu(connection)
    connection.close()