<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    

	<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h3 class="text-center">Student Registration Form</h3>
        </div>
											        
											        <!-- For Prompting error  -->
											        <div class="alert alert-danger" role="alert">
											  			<form:errors path="student.*"/>
													</div>
													
        <div class="card-body">
            <form action="handleform" method="post">
                <!-- Name Field -->
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" required>
                </div>

                <!-- ID Field -->
                <div class="mb-3">
                    <label for="id" class="form-label">ID</label>
                    <input type="text" class="form-control" id="id" name="id" placeholder="Enter your ID" required>
                </div>

                <!-- DOB Field -->
                <div class="mb-3">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="text" class="form-control" name="date" id="dob" placeholder="DD/MM/YYYY" required>
                </div>

                <!-- Course Selection -->
                <div class="mb-3">
                    <label for="courses" class="form-label">Courses</label>
                    <select class="form-select" id="courses" name="courses" multiple>
                        <option value="math">Mathematics</option>
                        <option value="science">Science</option>
                        <option value="history">History</option>
                        <option value="art">Art</option>
                        <option value="computer">Computer Science</option>
                    </select>
                </div>

                <!-- Gender Radio Buttons -->
                <div class="mb-3">
                    <label class="form-label">Gender</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                            <label class="form-check-label" for="male">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="female" value="female">
                            <label class="form-check-label" for="female">Female</label>
                        </div>
                    </div>
                </div>

                <!-- Student Type Dropdown -->
                <div class="mb-3">
                    <label for="studentType" class="form-label">Student Type</label>
                    <select class="form-select" id="studentType" name="type">
                        <option value="normal">Normal Student</option>
                        <option value="old">Old Student</option>
                    </select>
                </div>

				<div class="card">
					<div class="card-body">
						<p>Your Address</p>
						
						<div class="form-group">
							<input type="text" class="form-control" name="address.street" placeholder="Enter Street">
						</div>
						
						<div class="form-group mt-2">
							<input type="text" class="form-control" name="address.city" placeholder="Enter City">
						</div>
					</div>
				</div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
