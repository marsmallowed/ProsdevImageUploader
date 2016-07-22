<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import ="model.dto.User, model.dto.Picture, java.util.ArrayList, controller.Controller, model.dto.PictureManager"%>
<%@page import = "java.io.OutputStream" %>

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
                             <form name="fileform" method="post" action="ImageUploadServlet"  enctype="multipart/form-data">
                                <div class="file-field input-field col s10">
                                  <div class="btn blue-grey lighten-4 ">
                                    <span><font size = "5">+</font></span>
                                    <input type="file" name="photo" class="form-control">
                                  </div>
                                  <div class="file-path-wrapper">
                                    <input class="file-path validate, form-control" type="text" placeholder="Upload one or more files">
                                  </div>
                                </div>
                                 <div class = "col s2">
                                     <br>
                                     <button  type="submit" class="waves-effect waves-light blue btn-large" value = "submit">Post</button>
                                 </div>
                                 <div class="col s10">
									<input placeholder="Add description" name="description" type="text" >
								 </div>
								 
                            </form>
                            
                </div>
                </div>
                
                        <%User user =  (User) session.getAttribute("user");
                        
                          ArrayList<Picture> myPictures = Controller.getPictures();
                          int size = myPictures.size();
              			  System.out.println("size: " + size);
                          
                          for(int i = 0; i < size; i++)
                          {
                        	  out.println("<div class=\"card\">");
                        	  out.println("<div class=\"card-image waves-effect waves-block waves-light\">");  
                        	  out.println("<img class=\"activator\" src=ViewImageServlet?id=" + myPictures.get(i).getId() + ">");
                        	  out.println("</div>");
                        	  out.println("<div class=\"card-content\">");
                        	  out.println("<span class=\"card-title activator grey-text text-darken-4\">Image Description<i class=\"material-icons right\">more_vert</i></span>");
                        	  out.println("</div>");
                        	  out.println("<div class=\"card-reveal\">");
                        	  out.println("<span class=\"card-title grey-text text-darken-4\">Card Title<i class=\"material-icons right\">close</i></span>");
                        	  out.println("<p>" + myPictures.get(i).getCaption() + "</p>");
                        	  out.println("<form name =\"deleteImage\" method=\"GET\" action=\"DeleteServlet\">");
							  out.println("<input type = \"hidden\" name=\"id\" value= " + myPictures.get(i).getId() +">");
                        	  out.println("<a class = \"waves-effect waves-light blue btn-large right\" onclick=\"$(this).closest('form').submit()\">Delete this Photo</a>");
                        	  out.println("</form>");
                        	  out.println("</div> </div>");
                        	  
							  
                        	  
                          }
                        %>
		</div>
    </body>
  </html>


        