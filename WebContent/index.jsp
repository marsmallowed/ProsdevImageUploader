<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	  
	  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
	  <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places" type="text/javascript"></script> 
        <title> Log in or Sign up</title>
    </head>

    <body>
	<nav class="top-nav blue">
	<a class="brand-logo center">Image Uploader - Group 4</a>
	</nav>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
		
		<div class="container" style="padding-left: 150px;padding-right: 150px;" >
          
		<div class="row">		
			<div class="col s12">
						<div class="card-panel z-depth-1" >
						<form action = "LoginServlet" name="login" novalidate method = "post" >
                            <a><font size="6">Log In</font></a>
                            <p>
                               <input placeholder="Username" id="username" name="username" type="text" class="validate, form-control">
                            </p>


                            <p>
                                <input placeholder="Password" id="password" name="password" type="password" class="validate, form-control">
                            </p>
                            <button  type="submit" class="waves-effect waves-light blue btn-large" value = "submit">Log In</button>
                         </form>
                        </div>
			</div>
            
            <p><a href="#bottom"><font size="6" color="grey"><center>Don't have an account yet? Sign up below!</center></font></a></p>
            
            <div class="col s12" id="bottom">
						<div class="card-panel blue lighten-5 z-depth-1" >
						<form action = "RegisterServlet" name="signup" novalidate method = "post" >
                            <p>
                               <a><font size="6">Sign Up</font></a>
                            </p>
                            <p>
                               <input placeholder="Username" name="username" id="user_name2" type="text" class="validate">
                            </p>


                            <p>
                                <input placeholder="Password" name="password" id="password2" type="password" class="validate">
                            </p>
                            
                            <p>
                                <input placeholder="Re-type Password" name="cfmpassword" id="password2" type="password" class="validate">
                            </p>
                            
                           <button  type="submit" class="waves-effect waves-light blue btn-large" value = "submit">Sign Up</button>
                            </form>
						</div>
			</div>
		</div>
        </div>
		
		

    </body>
  </html>


        