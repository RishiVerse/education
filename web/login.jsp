

<!DOCTYPE html>
<html>
<head>
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="row">
        <a href="index.html"><img src="images/reseacrh.jpeg" title="chakra"></a>
        <div class="heading-container">
            <h3>Institute of Research in Space Science</h3>
        </div>
        <div class="button-container">
            <a href="login.html"><button class="login-btn">Login</button></a>
            <a href="register"><button class="signup-btn">Sign Up</button></a>
        </div>
    </div>

 
<div class="navContainer">
  <a href="#Home">Home</a>
  <a href="#Topics">Topics</a>
  <a href="#Trending">Trending</a>
  <a href="#News">News</a>
   <a href="#About">About</a>
   
</div>
        <div>
            <form action="loginrun.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>


        <input type="submit" value="Login">
         
    </form>
        </div>
       
    </body>
</html>
