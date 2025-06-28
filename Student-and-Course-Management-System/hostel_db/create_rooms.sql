USE hostel_db;

CREATE TABLE IF NOT EXISTS Rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_id INT NOT NULL,
    room_number VARCHAR(10) NOT NULL,
    capacity INT NOT NULL CHECK (capacity BETWEEN 1 AND 6),
    is_available BOOLEAN DEFAULT TRUE,

    UNIQUE (hostel_id, room_number),
    FOREIGN KEY (hostel_id) REFERENCES Hostels(hostel_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
