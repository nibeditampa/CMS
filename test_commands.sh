# # A. Get All patients
# curl -X GET "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/patients/"

# # B. Get One patient
# curl -X GET "http://localhost:8000/api/patient/1"

# # C. Create patients
# curl -X POST "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/patients" \
#   -H "Content-Type: application/json" \
#   -d '{
#     "name": "Alice Johnson",
#     "age": 47,
#     "gender": "male",
#     "contact": 6371404057
#   }'

# # D. Update patients
# curl -X PUT "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/patients/2" \
#   -H "Content-Type: application/json" \
#   -d '{
#     "name": "Olivia Newman",
#     "age": 40,
#     "gender": "Female",
#     "contact": 8762503456
#   }'

# # E. Delete patients
# curl -X DELETE "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/patients/2"

# ============================
# DOCTOR MODULE
# ============================

# A. Get All doctors
curl -X GET "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/doctors"

# B. Get One doctor
curl -X GET "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/doctors/1"

# C. Create doctors
curl -X POST "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/doctors" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Dr. Rahul Sharma",
    "specialization": "Cardiology",
    "schedule": "Mon-Fri"
    "contact": 9876543210,
  }'

# # D. Update doctors
curl -X PUT "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/doctors/1" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Dr. Rahul Sharma",
    "specialization": "Cardiologist",
    "schedule":"Mon-Sat"
    "contact": 9876543210,
  
  }'

# # E. Delete doctors
curl -X DELETE "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/doctors/1"


# # ============================
# # BILLING MODULE
# # ============================

# # A. Get All bills
curl -X GET "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/billing"

# B. Get One bill
curl -X GET "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/billing/1"

# C. Create bills
curl -X POST "https://probable-acorn-r7p45vrv54gfxpv7-8000.app.github.dev/api/billing" \
  -H "Content-Type: application/json" \
  -d '{
    "patient_id": 1,
    "doctor_id": 1,
    "amount": 1500,
    "description": "Consultation + Medicines",
    "bill_date": "2025-03-15"
  }'


##################### DB Observation Via SQLite Web
- install https://github.com/coleifer/sqlite-web
- pip install sqlite-web
- sqlite_web clinic.db