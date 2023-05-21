CREATE TABLE med_centers(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT NOT NULL
)

CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    doctor_type TEXT DEFAULT = 'GP'
)

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    address TEXT NOT NULL,
)

CREATE TABLE diseases(
    id SERIAL PRIMARY KEY,
    disease_name TEXT NOT NULL,
    treatment TEXT
)

CREATE TABLE med_centers_doctors(
    id SERIAL PRIMARY KEY,
    med_center_id REFERENCES med_centers(id),
    doctor_id REFERENCES doctors(id)
)

CREATE TABLE doctors_patients(
    id SERIAL PRIMARY KEY,
    doctor_id REFERENCES doctors(id),
    patient_id REFERENCES patients(id),
)

CREATE TABLE patients_diseases(
    id SERIAL PRIMARY KEY,
    patient_id REFERENCES patients(id),
    disease_id REFERENCES diseases(id)
)