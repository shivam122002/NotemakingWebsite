<%
String message = (String) session.getAttribute("message");
if (message != null) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Alert</title>
    <!-- Include SweetAlert library -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
    <script>
        // Use SweetAlert to show the message
        Swal.fire({
            icon: 'success',
            title: '<%= message %>',
            text: 'What would you like to do?',
            showCancelButton: true,
            confirmButtonText: 'Add Note',
            cancelButtonText: 'Show Notes',
        }).then((result) => {
            if (result.isConfirmed) {
                // Redirect to addNote.jsp
                window.location.href = "addNote.jsp";
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                // Redirect to showNote.jsp
                window.location.href = "showNotes.jsp";
            }
        });
    </script>
</body>
</html>
<%
   // Clear the session attribute after showing the message
   session.removeAttribute("message");
}
%>
