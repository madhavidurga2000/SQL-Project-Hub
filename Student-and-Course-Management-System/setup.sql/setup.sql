-- Create all required databases
CREATE DATABASE IF NOT EXISTS university_db;
CREATE DATABASE IF NOT EXISTS fees_db;
CREATE DATABASE IF NOT EXISTS hostel_db;
CREATE DATABASE IF NOT EXISTS library_db;
CREATE DATABASE IF NOT EXISTS attendance_db;
CREATE DATABASE IF NOT EXISTS exam_db;

--  University DB
USE university_db;
SOURCE university_db/create_students.sql;
SOURCE university_db/create_departments.sql;
SOURCE university_db/create_courses.sql;
SOURCE university_db/create_instructors.sql;
SOURCE university_db/create_enrollment.sql;
SOURCE university_db/insert_sample_data.sql;

--  Fees DB
USE fees_db;
SOURCE fees_db/create_payments.sql;
SOURCE fees_db/create_scholarships.sql;
SOURCE fees_db/create_penalties.sql;
SOURCE fees_db/insert_sample_data.sql;

--  Hostel DB
USE hostel_db;
SOURCE hostel_db/create_hostels.sql;
SOURCE hostel_db/create_rooms.sql;
SOURCE hostel_db/create_student_hostel.sql;
SOURCE hostel_db/insert_sample_data.sql;

--  Library DB
USE library_db;
SOURCE library_db/create_books.sql;
SOURCE library_db/create_issue_log.sql;
SOURCE library_db/create_fine_records.sql;
SOURCE library_db/insert_sample_data.sql;

--  Attendance DB
USE attendance_db;
SOURCE attendance_db/create_attendance.sql;
SOURCE attendance_db/create_attendance_report_view.sql;
SOURCE attendance_db/insert_sample_data.sql;

--  Exam DB
USE exam_db;
SOURCE exam_db/create_exams.sql;
SOURCE exam_db/create_results.sql;
SOURCE exam_db/grading_case_statements.sql;
SOURCE exam_db/insert_sample_data.sql;
