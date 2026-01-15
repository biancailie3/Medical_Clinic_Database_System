
## Project Overview
This project represents a relational database schema designed for a Medical Clinic. It was developed as part of the Database curriculum at the Faculty of Automation and Computers (Politehnica University of Timisoara).

The system manages the core operational data of a clinic, ensuring data integrity for doctors, appointments, and prescriptions.

## 📂 Database Schema Structure
The project is built around 5 normalized tables:

* **`cbMedic`**: Stores doctor profiles, linked to their specialization and professional rank.
* **`cbProgramare`**: Manages patient appointments, linking patients to specific doctors and dates.
* **`cbReteta`**: Handles medical prescriptions issued during appointments, tracking medications and dosage.
* **`cbSpecialitate`**: Nomenclature table for medical fields (Cardiology, Dermatology, etc.) and payment coefficients.
* **`cbGrad`**: Nomenclature table for professional ranks (Resident, Specialist, Primary) and tariffs.

## 🛠️ Key Technical Skills Demonstrated
* **Relational Database Design:** Created a normalized schema to minimize redundancy.
* **Data Integrity:** Implemented **Primary Keys**, **Foreign Keys**, and **CHECK constraints** (e.g., ensuring tariffs are positive) to validate data quality.
* **SQL DDL (Data Definition):** Utilized `CREATE` and `DROP` statements to manage database objects.
* **SQL DML (Data Manipulation):** Scripted bulk data insertion using `INSERT` statements to populate the system with realistic test scenarios.

## 💻 Technologies Used
* **Language:** SQL (Oracle Dialect)
* **Environment:** Oracle APEX / SQL Developer

## 🚀 How to Run
1.  Run the `schema_creation.sql` script to set up the tables and constraints.
2.  Run the `insert_data.sql` script to populate the database with dummy data.
3.  Execute queries to test the relationships (e.g., join Doctors with Appointments).

---
*Author: Bianca Ilie | Faculty of Automation and Computers*
