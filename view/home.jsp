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
        <title> Home</title>
    </head>

    <body>
	<nav class="top-nav blue">
	<a class="brand-logo center">Image Uploader - Group 4</a>
	</nav>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
		
		<div class="container " >
          
            <div class="row">		
                <div class="col s12">
                             <form action="#">
                                <div class="file-field input-field col s10">
                                  <div class="btn blue-grey lighten-4 ">
                                    <span><font size = "5">+</font></span>
                                    <input type="file" multiple>
                                  </div>
                                  <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text" placeholder="Upload one or more files">
                                  </div>
                                </div>
                                 <div class = "col s2">
                                     <br>
                                     <a class="waves-effect waves-light blue btn-large right" id="Post">Post</a>
                                 </div>
                                
                            </form>
                </div>
                </div>
                        <div class="card">
                            <div class="card-image waves-effect waves-block waves-light">
                              <img class="activator" src="adventure-time.jpg">
                            </div>
                            <div class="card-content">
                              <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span> 
                            </div>
                            <div class="card-reveal">
                              <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                              <p>Here is some more information about this product that is only revealed once clicked on.</p>
                            </div>
                          </div>
            
                        <div class="card">
                            <div class="card-image waves-effect waves-block waves-light">
                              <img class="activator" src="cool-dogs.JPG">
                            </div>
                            <div class="card-content">
                              <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            </div>
                            <div class="card-reveal">
                              <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                              <p>Here is some more information about this product that is only revealed once clicked on.</p>
                            </div>
                          </div>
            

            
        </div>
		
		

    </body>
  </html>


        