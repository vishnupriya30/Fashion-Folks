<head>
	<title>Fashion Folks</title>

<link rel="icon" href="pics/f1.png" type="image/x-icon">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
<%
String user = (String)session.getAttribute("user");
String pass = (String)session.getAttribute("pass");
%>
    <div id="login" style="background-color:#ffffb3; height:100%">
        <h3 class="text-center text-white pt-5"></h3>
        <div class="container" >
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                </br></br></br>
                    <div id="login-box" class="col-md-12">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <img src="pics\f1.png"  height="70" width="70" style="margin-left:-20px">
                    </br></br>
                        <form action="LoginServlet" id="login-form" class="form"  method="post">
                            <h3 class="text-center " style="color:#1a8cff">Login</h3>
                            <div class="form-group">
                                <label for="username" style="color:#1a8cff">Username:</label><br>
                                <input type="text" name="username" value=${user} class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" style="color:#1a8cff">Password:</label><br>
                                <input type="password" name="password" class="form-control" style="border-color:red; background-color:#ffd0cc"></br>
                                <h6 style="color:red">Please enter correct password</h6>
                            </div>
                            <div class="form-group" >
                            </br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" style="background-color:#1a8cff" value="Login">
                            </div>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
