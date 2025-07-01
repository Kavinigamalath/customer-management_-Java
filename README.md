# Customer Management System

![Java](https://img.shields.io/badge/Java-17-blue)
![Servlet](https://img.shields.io/badge/Servlet-4.0-orange)
![JSP](https://img.shields.io/badge/JSP-2.3-yellow)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Bootstrap](https://img.shields.io/badge/Styles-Custom-green)

A c web application for managing customer information with CRUD operations, built with Java Servlets, JSP, and MySQL.

## Features

- **User Management**:
  - Create new customer profiles
  - View all customers in a responsive table
  - Update existing customer information
  - Delete customer records
  - Form validation for all fields

- **Security**:
  - Password strength enforcement (8+ chars, number, letter, symbol)
  - Input validation for all fields
  - Phone number format validation

- **User Experience**:
  - Modern, responsive UI with custom CSS
  - Font Awesome icons throughout
  - Smooth transitions and hover effects
  - Mobile-friendly design

- **Database**:
  - MySQL backend with JDBC connectivity
  - Prepared statements to prevent SQL injection
  - Connection pooling implementation

## Technologies Used

- **Backend**:
  - Java 17
  - Servlet 4.0
  - JSP 2.3
  - JDBC for database connectivity

- **Frontend**:
  - HTML5, CSS3
  - Custom CSS with modern design patterns
  - Font Awesome 6.0 for icons
  - Google Fonts (Poppins, Roboto)
  - Responsive design with media queries

- **Database**:
  - MySQL 8.0
  - projects.customer table structure

- **Tools**:
  - Maven for dependency management
  - Tomcat 9.0+ as servlet container
    
## Installation

### Prerequisites

- Java JDK 17+
- Apache Tomcat 9.0+
- MySQL Server 8.0+
- Maven 3.6+

## Database Schema

The application uses the following MySQL table structure:

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

##  Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements.

##  License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

##  Contact

- Email: kavinigamalathofficial@gmail.com
- GitHub: [@Kavinigamalath](https://github.com/Kavinigamalath)
- LinkedIn: [Kavini Gamalath](https://www.linkedin.com/in/kavinigamalath/)

---

 Feel free to star this repository if you find it useful!



