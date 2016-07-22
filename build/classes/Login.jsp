<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>K-Pop Website</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<%
			String username = "";
			String password = "";
	%>
</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <a class="navbar-brand page-scroll" href="index.html">Start Reading</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
					<li>
						<a data-toggle="modal" data-target="#signUp" >Sign Up</a>
					</li>
					<li>
						<a data-toggle="modal" data-target="#signIn" >Log In</a>
					</li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

			<!-- Sign In -->			
						<div class="modal" id="signIn">
							<div class="modal-dialog">
								<div class="modal-content">
								<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;</button>
								<h4 class="modal-title">Log In</h4>
								</div>
								<div class="modal-body">
										<div class="row">
                <div class="col-lg-12">
                    <form action = "LoginServlet" name="register" id="contactForm" novalidate method = "post" >
                        <div class="row">
                            <div class="col-md-6">
                               
								<div class="form-group">    					                    
                                    <input type="username" class="form-control" placeholder="Username *" name="username" value = "<%=username %>" required data-validation-required-message="Please enter your username.">
                                    <p class="help-block text-danger"></p>
                                </div>
								
								<div class="form-group">
                                    <input type="password" class="form-control" placeholder="Password *" name="password" value = "<%=password %>"required data-validation-required-message="Please enter your password.">
                                    <p class="help-block text-danger"></p>
                                </div>
								

                            <div class="col-lg-8 text-center">
                                <div id="success"></div>
                                <button  type="submit" class="btn btn-xl" value = "submit">Log In</button>
                            </div>
                        </div>       
                    </div>
                </form>
            </div>
        </div>
															
								</div>
								</div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
						</div>
						<!-- Sign Up -->			
						<div class="modal" id="signUp">
							<div class="modal-dialog">
								<div class="modal-content">
								<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;</button>
								<h4 class="modal-title">Sign Up</h4>
								</div>
								<div class="modal-body">
										<div class="row">
                <div class="col-lg-12">
                    <form name="register" id="contactForm" novalidate action = "RegisterServlet" method="post">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="form-group">
                                    <input type="name" name = "name" class="form-control" placeholder="Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
								<div class="form-group">
                                    <input type="username" name = "username" class="form-control" placeholder="Username *" id="username" required data-validation-required-message="Please enter your username.">
                                    <p class="help-block text-danger"></p>
                                </div>
								 <font color="#939393">Birthday * </font>
								<div class="form-inline" >                               
                                    <select name="month" class="form-control" id="month">
										<option> - Month - </option>
										<option value="01">January</option>
										<option value="02">Febuary</option>
										<option value="03">March</option>
										<option value="04">April</option>
										<option value="05">May</option>
										<option value="06">June</option>
										<option value="07">July</option>
										<option value="08">August</option>
										<option value="09">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>

									<select name="day" class="form-control" >
										<option> - Day - </option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
									
									<select name="year" class="form-control" id="year">
										<option> - Year - </option>
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>
										<option value="2002">2002</option>
										<option value="2001">2001</option>
										<option value="2000">2000</option>
										<option value="1999">1999</option>
										<option value="1998">1998</option>
										<option value="1997">1997</option>
										<option value="1996">1996</option>
										<option value="1995">1995</option>
										<option value="1994">1994</option>
										<option value="1993">1993</option>
										<option value="1992">1992</option>
										<option value="1991">1991</option>
										<option value="1990">1990</option>
										<option value="1989">1989</option>
										<option value="1988">1988</option>
										<option value="1987">1987</option>
										<option value="1986">1986</option>
										<option value="1985">1985</option>
										<option value="1984">1984</option>
										<option value="1983">1983</option>
										<option value="1982">1982</option>
										<option value="1981">1981</option>
										<option value="1980">1980</option>
										<option value="1979">1979</option>
										<option value="1978">1978</option>
										<option value="1977">1977</option>
										<option value="1976">1976</option>
										<option value="1975">1975</option>
										<option value="1974">1974</option>
										<option value="1973">1973</option>
										<option value="1972">1972</option>
										<option value="1971">1971</option>
										<option value="1970">1970</option>
										<option value="1969">1969</option>
										<option value="1968">1968</option>
										<option value="1967">1967</option>
										<option value="1966">1966</option>
										<option value="1965">1965</option>
										<option value="1964">1964</option>
										<option value="1963">1963</option>
										<option value="1962">1962</option>
										<option value="1961">1961</option>
										<option value="1960">1960</option>
										<option value="1959">1959</option>
										<option value="1958">1958</option>
										<option value="1957">1957</option>
										<option value="1956">1956</option>
										<option value="1955">1955</option>
										<option value="1954">1954</option>
										<option value="1953">1953</option>
										<option value="1952">1952</option>
										<option value="1951">1951</option>
										<option value="1950">1950</option>
										<option value="1949">1949</option>
										<option value="1948">1948</option>
										<option value="1947">1947</option>
										<option value="1946">1946</option>
										<option value="1945">1945</option>
										<option value="1944">1944</option>
										<option value="1943">1943</option>
										<option value="1943">1943</option>
										<option value="1942">1942</option>
										<option value="1941">1941</option>
										<option value="1940">1940</option>
									</select>
                                    
                                    <p class="help-block text-danger"></p>
                                </div>
								<div class="form-group">
                                    <input type="password" name = "password" class="form-control" placeholder="Password *" id="password" required data-validation-required-message="Please enter your password.">
                                    <p class="help-block text-danger"></p>
                                </div>
								<div class="form-group">
                                    <input type="password" name = "cfmpassword" class="form-control" placeholder="Confirm Password *" id="cfmpassword" required data-validation-required-message="Please confirm your password.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email"  name = "email" class="form-control" placeholder="Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="location"  name = "location" class="form-control" placeholder="Location *" id="location" required data-validation-required-message="Please enter your location.">
                                    <p class="help-block text-danger"></p>
                                </div>
								 <div class="form-group">
								 <select id="gender" class="form-control"  name = "gender" >
                                    <option value="-1">Select gender*</option>
                                    <option value="1">Male</option>
                                    <option value="2">Female</option>
                                 </select> 								  
                                    <p class="help-block text-danger"></p>
                                </div>
                            <div class="col-lg-8 text-center">
                                <div id="success"></div>
                                			<input type="submit"  class="btn btn-xl" value="Join the Club" >
                            </div>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
															
								</div>
								</div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
						</div>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-heading">Welcome To K-Pop Wonderland!</div>
				<div class="intro-lead-in">Annyeonghasseyo!</div>
            </div>
        </div>
    </header>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-20">
                    <span class="copyright">Copyright &copy; Nocturnals 2015</span>
                </div>
            </div>
        </div>
    </footer>
	
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>
	
</body>

</html>