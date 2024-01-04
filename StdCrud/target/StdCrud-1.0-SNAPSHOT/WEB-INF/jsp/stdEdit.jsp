<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 50px;
        }
        .container {
            max-width: 600px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Student</h1>
        <f:form method="post" action="/editstdsave" modelAttribute="student">
            <f:hidden path="roll" />
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <f:input path="name" id="name" class="form-control"/>
            </div>
            <div class="mb-3">
                <label for="department" class="form-label">Department</label>
                <f:select path="department" id="department" class="form-control">
                    <f:option value="Java" label="Java"/>
                    <f:option value="C#" label="C#"/>
                    <f:option value="Wdpf" label="Wdpf"/>
                    <f:option value="Nt" label="Nt"/>
                </f:select>
            </div>
            <div class="mb-3">
                <label for="marks" class="form-label">Marks</label>
                <f:input path="marks" id="marks" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Gender</label>
                <div>
                    <f:radiobutton path="gender" value="Male" label="Male" />
                    <f:radiobutton path="gender" value="Female" label="Female" />
                </div>
            </div>
            <div class="mb-3">
                <label class="form-label">Hobby</label><br/>
                <f:checkbox path="hobby" value="Fishing" /> Fishing<br/>
                <f:checkbox path="hobby" value="Reading" /> Reading<br/>
                <f:checkbox path="hobby" value="Gaming" /> Gaming<br/>
                <f:checkbox path="hobby" value="Sleeping" /> Sleeping<br/>
            </div>
            <div class="mb-3">
                <label for="dob" class="form-label">Date of Birth</label>
                <f:input path="dob" id="dob" class="form-control" type="date" />
            </div>
            <div class="row">
                <div class="col">
                    <input type="submit" value="Edit" class="btn btn-primary"/>
                </div>
                <div class="col">
                    <a href="/viewallstd" class="btn btn-secondary">View All</a>
                </div>
            </div>
        </f:form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
