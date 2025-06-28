USE hostel_db;

CREATE TABLE IF NOT EXISTS Student_Hostel (
    allocation_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    room_id INT NOT NULL,
    date_of_allocation DATE NOT NULL,
    expected_checkout DATE,
    status ENUM('Active', 'Left') DEFAULT 'Active',

    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    UNIQUE (student_id, room_id)
);
