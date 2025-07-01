<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Customer | Customer Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4361ee;
            --primary-hover: #3a56d4;
            --secondary-color: #3f37c9;
            --text-color: #2b2d42;
            --light-gray: #f8f9fa;
            --border-color: #e9ecef;
            --success-color: #4bb543;
            --error-color: #ff3333;
            --dark-color: #1a1a2e;
            --accent-color: #00b4d8;
            --transition: all 0.3s ease;
        }
        
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--light-gray);
            color: var(--text-color);
            line-height: 1.6;
            padding: 0;
            margin: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }
        
        /* Header Styles */
        .main-header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
            width: 100%;
        }

        .header-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 700;
            font-size: 1.5rem;
        }

        .logo i {
            color: var(--primary-color);
            margin-right: 0.5rem;
            font-size: 1.8rem;
        }

        .nav-links {
            display: flex;
            gap: 1.5rem;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 500;
            transition: var(--transition);
            display: flex;
            align-items: center;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        .nav-links a i {
            margin-right: 0.5rem;
        }
        
        /* Main Content */
        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem 1rem;
            width: 100%;
        }
        
        .container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            width: 100%;
            max-width: 480px;
            margin: 20px;
            overflow: hidden;
            transition: var(--transition);
        }
        
        .container:hover {
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
        }
        
        .header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 25px 30px;
            text-align: center;
        }
        
        .header h1 {
            font-weight: 600;
            font-size: 1.8rem;
            margin: 0;
        }
        
        .form-container {
            padding: 30px;
        }
        
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--text-color);
            font-size: 0.95rem;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            font-size: 0.95rem;
            transition: var(--transition);
            background-color: #f8f9fa;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
            background-color: white;
        }
        
        select.form-control {
            appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 1em;
        }
        
        .btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            font-family: 'Poppins', sans-serif;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: var(--transition);
            margin-top: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .btn:hover {
            background: linear-gradient(135deg, var(--primary-hover), #3732b8);
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        
        .btn:active {
            transform: translateY(0);
        }
        
        .back-link {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            color: var(--primary-color);
            text-decoration: none;
            font-size: 0.9rem;
            transition: var(--transition);
            width: 100%;
            padding: 10px;
            border-radius: 6px;
        }
        
        .back-link:hover {
            text-decoration: none;
            background-color: rgba(67, 97, 238, 0.1);
        }
        
        .back-link i {
            margin-right: 8px;
        }
        
        .input-icon {
            position: relative;
        }
        
        .input-icon i {
            position: absolute;
            right: 15px;
            top: 42px;
            color: #adb5bd;
        }
        
        /* Footer Styles */
        .main-footer {
            background-color: var(--dark-color);
            color: white;
            padding: 2rem 0;
            width: 100%;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-links {
            display: flex;
            gap: 1.5rem;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--accent-color);
        }

        .copyright {
            font-size: 0.9rem;
            opacity: 0.8;
        }

        .social-links {
            display: flex;
            gap: 1rem;
        }

        .social-links a {
            color: white;
            font-size: 1.2rem;
            transition: var(--transition);
        }

        .social-links a:hover {
            color: var(--accent-color);
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .header-content, .footer-content {
                flex-direction: column;
                gap: 1rem;
                text-align: center;
            }
            
            .nav-links, .footer-links {
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .container {
                margin: 10px;
                border-radius: 8px;
            }
            
            .header {
                padding: 20px;
            }
            
            .form-container {
                padding: 20px;
            }
            
            .btn {
                padding: 12px;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

<!-- Main Header -->
<header class="main-header">
    <div class="header-content">
        <a href="#" class="logo">
            <i class="fas fa-user-cog"></i>
            <span>CustomerAdmin</span>
        </a>
        <nav class="nav-links">
            <a href="#"><i class="fas fa-home"></i> Dashboard</a>
            <a href="http://localhost:8090/CustomerMng/"><i class="fas fa-users"></i> Customers</a>
            <a href="#"><i class="fas fa-cog"></i> Settings</a>
            <a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="main-content">
    <div class="container">
        <div class="header">
            <h1>Add New Customer</h1>
        </div>
        
        <div class="form-container">
            <form action="insert" method="post" onsubmit="return validateForm()">
                <input type="hidden" name="id" value="${service.id}">
                
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" class="form-control" value="${service.name}" required placeholder="Enter full name">
                </div>
                
                <div class="form-group">
                    <label for="uname">Username</label>
                    <input type="text" id="uname" name="uname" class="form-control" value="${service.uname}" required placeholder="Choose a username">
                </div>
                
                <div class="form-group input-icon">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" value="${service.password}" 
                           pattern="(?=.*\d)(?=.*[a-zA-Z])(?=.*\W).{8,}" 
                           title="Password must contain at least 8 characters, one number, one letter, and one symbol" 
                           required placeholder="Create a strong password">
                    <i class="fas fa-lock"></i>
                </div>
                
                <div class="form-group input-icon">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" class="form-control" value="${service.phone}" 
                           pattern="0\d{9}" 
                           title="Phone number must start with 0 and have 10 digits."
                           required placeholder="0123456789">
                    <i class="fas fa-phone"></i>
                </div>
                
                <div class="form-group input-icon">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" class="form-control" value="${service.email}" required placeholder="example@domain.com">
                    <i class="fas fa-envelope"></i>
                </div>
                
                <div class="form-group">
                    <label for="sex">Gender</label>
                    <select id="sex" name="sex" class="form-control" required>
                        <option value="">Select Gender</option>
                        <option value="male" ${service.sex == 'male' ? 'selected' : ''}>Male</option>
                        <option value="female" ${service.sex == 'female' ? 'selected' : ''}>Female</option>
                        <option value="other" ${service.sex == 'other' ? 'selected' : ''}>Other</option>
                    </select>
                </div>
                
                <button type="submit" class="btn">
                    <i class="fas fa-user-plus"></i> Add Customer
                </button>
            </form>

            <a href="http://localhost:8090/CustomerMng/" class="back-link">
                <i class="fas fa-arrow-left"></i> Back to Customers List
            </a>
        </div>
    </div>
</main>

<!-- Main Footer -->
<footer class="main-footer">
    <div class="footer-content">
        <div class="copyright">
            &copy; 2023 Customer Management System. All rights reserved.
        </div>
        <div class="footer-links">
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Service</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
            <a href="#"><i class="fab fa-github"></i></a>
        </div>
    </div>
</footer>

<script>
function validateForm() {
    var passwordInput = document.getElementById("password");
    var password = passwordInput.value;
    var passwordPattern = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*\W).{8,}$/;
    
    if (!passwordPattern.test(password)) {
        alert("Password must contain at least 8 characters, one number, one letter, and one symbol.");
        passwordInput.focus();
        return false;
    }
    
    var phoneInput = document.getElementById("phone");
    var phone = phoneInput.value;
    var phonePattern = /^0\d{9}$/;

    if (!phonePattern.test(phone)) {
        alert("Phone number must start with 0 and have 10 digits.");
        phoneInput.focus();
        return false;
    }
    return true;
}
</script>
</body>
</html>