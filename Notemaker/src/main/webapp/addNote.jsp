<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Notes</title>
    <!-- Add your CSS and JavaScript links here -->
    <%@include file="all_js_css.jsp" %>
</head>
<body>
    <!-- Add a header or navigation bar if needed -->

    <div class="container">
       <%@include file="nav-bar.jsp" %>
    </div>
    <br><br>
    
   
        <div class="text-center">
        
           <h1>Write Something</h1>
        </div>
        <div class="container">
        <form id="note-form" action="SaveNoteServlate" method="post">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea class="form-control" id="content" name="content" rows="10" required></textarea>
            </div>
            <br>
            <div class="text-center">
            <button type="submit" class="btn btn-primary" id="submit-btn">Add Notes</button>
           </div>
           <%@include file="mssg/message.jsp" %>
        </form>
        </div>   
</body>
</html>
