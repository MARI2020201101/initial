<head>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>BLOG PROJECT</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="/blog/board?cmd=list">BLOG</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
    
        <a class="nav-link active" aria-current="page" href="/blog/board?cmd=list">Home</a>
       <c:choose>
        <c:when test="${empty loginUser}"> 
	        <a class="nav-link" href="/blog/user?cmd=registerForm">Register</a>
	        <a class="nav-link" href="/blog/user?cmd=loginForm">Login</a>
        </c:when>
        <c:otherwise>
	        <a class="nav-link" href="/blog/board?cmd=writeForm">Write</a>
	        <a class="nav-link" href="/blog/user?cmd=updateForm">UserInfo</a>
	        <a id="logout" class="nav-link" href="/blog/user?cmd=logout">Logout</a>
        </c:otherwise>
      </c:choose>
      </div>
    </div>
  </div>
</nav>
<br>
</head>
<script type="text/javascript">
$("#logout").click( function(){alert("Logout Success")});
</script>
