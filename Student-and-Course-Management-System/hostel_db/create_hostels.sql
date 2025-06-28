USE hostel_db;

CREATE TABLE IF NOT EXISTS Hostels (
    hostel_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_name VARCHAR(100) NOT NULL UNIQUE,
    type ENUM('Boys', 'Girls', 'Co-ed') NOT NULL,
    capacity INT NOT NULL CHECK (capacity > 0),
    warden_name VARCHAR(100) NOT NULL
);
