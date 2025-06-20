-- Table structure for employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    username VARCHAR(100) NOT NULL
);

-- Insert data into employees
INSERT INTO employees (id, email, name, password, role, username) VALUES
(1, 'surya@example.com', 'Surya Narayanan', 'password123', 'EMPLOYEE', 'Surya'),
(3, 'monish@example.com', 'Monish S', 'password123', 'EMPLOYEE', 'Monish'),
(6, 'praveen@example.com', 'Praveen S', 'password123', 'EMPLOYEE', 'Praveen'),
(7, 'sanjai@example.com', 'Sanjain E', 'password123', 'EMPLOYEE', 'Sanjai'),
(8, 'vasanth@example.com', 'Vasanth R', 'password123', 'EMPLOYEE', 'vasanth'),
(11, 'vishnu@example.com', 'Vishnu S', 'password123', 'EMPLOYEE', 'Vishnu');

-- Table structure for payrolls
CREATE TABLE payrolls (
    id INT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    description VARCHAR(255),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Insert data into payrolls
INSERT INTO payrolls (id, amount, date, description, employee_id) VALUES
(1, 5000, '2025-06-19', 'June Salary', 1),
(2, 50000, '2025-05-19', 'May Salary', 6),
(3, 50000, '2025-05-19', 'May Salary', 3),
(4, 30000, '2025-05-19', 'May Salary', 7),
(5, 30000, '2025-06-19', 'May Salary', 8); 