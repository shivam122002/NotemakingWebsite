<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="all_js_css.jsp"%>
<title>Note Taker Application</title>
</head>
<body>


	<div class="container">
		<%@include file="nav-bar.jsp"%>
	</div>
	<br><br>

	<div class="card  shadow bg-white py-5">
		<img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
			src="img/notepad.png">
		<h1 class="text-primary text-uppercase text-center mt-3">Start
			Taking your notes</h1>

		<div class="container text-center">
			<a href="addNote.jsp" class="btn btn-outline-primary text-center">Start
				here</a>
		</div>

	</div>




</body>
</html>