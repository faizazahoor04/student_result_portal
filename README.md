# Student Result Portal – AI-Powered Result Management with WhatsApp Notifications
A full-featured Flask-based web application for schools to manage student results, provide AI-driven performance analysis, and send instant result notifications via WhatsApp (Meta Cloud API).
# Key Features
Student Login – Secure access using Student ID and password.
Detailed Result Dashboard – View overall marks, subject-wise breakdowns, and interactive charts.
AI Performance Analysis – Identifies weak/strong subjects, provides personalized study tips, and generates actionable advice.
Admin Panel – Manage students, view all records, and trigger WhatsApp notifications.
WhatsApp Integration – Send result templates directly to parents’ phones (supports test numbers and bulk send).
Excel Data Import – Load student data and subject marks from student_data.xlsx using the included import_data.py script.
One-click Startup – run.bat (Windows) installs dependencies and launches the server.
# Tech Stack
Backend: Flask (Python), SQLite
Frontend: HTML, CSS, JavaScript, Chart.js
WhatsApp API: Meta Cloud API (v21.0)
Data Handling: openpyxl (Excel), hashlib (password hashing)
# Quick Start
Install Python 3.8+
Run python import_data.py to load sample data
Launch the app with python app.py or double-click run.bat
Visit http://127.0.0.1:5000
Admin login: admin1234 (change in app.py)
Student login: e.g., STU001 / stu001
# WhatsApp Setup (Optional)
Create a Meta Developer App → add WhatsApp product
Copy Access Token and Phone Number ID into app.py
Create a template named result_notification
Add parent phone numbers to the Excel file (column H in Students sheet)
See the full setup guide inside app.py (bottom section).
# Project Structure
student_result_portal/
├── app.py               # Main Flask application
├── import_data.py       # Excel → SQLite import script
├── run.bat              # Windows launcher
├── student_data.xlsx    # Sample student data (Students + Subject Marks sheets)
├── students.db          # SQLite database (auto-generated)
└── templates/           # HTML templates (login, dashboard, admin, etc.)
# License
MIT – free to use and modify for educational institutions.
