<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
        <h1>Add Student</h1>

        <f:form method="post" action="/stdsave" modelAttribute="student">
            <table class="table">
                <tr>
                    <td>Name</td>
                    <td>
                        <f:input path="name" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td>
                        <f:select path="department" class="form-select">
                            <f:option value="Java">Java</f:option>
                            <f:option value="C#">C#</f:option>
                            <f:option value="Wdpf">Wdpf</f:option>
                            <f:option value="Nt">Nt</f:option>
                        </f:select>
                    </td>
                </tr>
                <tr>
                    <td>Marks</td>
                    <td>
                        <f:input path="marks" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <f:radiobutton path="gender" value="Male" label="Male" />
                        <f:radiobutton path="gender" value="Female" label="Female" />
                    </td>
                </tr>

                <tr>
                    <td>Hobby</td>
                    <td>
                        <f:checkbox path="hobby" value="Fishing" /> Fishing<br/>
                        <f:checkbox path="hobby" value="Reading" /> Reading<br/>
                        <f:checkbox path="hobby" value="Gaming" /> Gaming<br/>
                        <f:checkbox path="hobby" value="Sleeping" /> Sleeping<br/>
                    </td>
                </tr>

                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <f:input path="dob" class="form-control" type="date" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save" class="btn btn-primary" />
                    </td>
                </tr>
            </table>
        </f:form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
