<?php 

  require_once 'header.php';
  $controller = new ControllerPropertyType();
  
  if( isset($_POST['submit']) ) {
    
      $propertytype_found = $controller->getPropertyTypeByPropertyType( trim($_POST['property_type']) );
      if($propertytype_found == null) {

          $itm = new PropertyType();
          $itm->property_type = htmlspecialchars(trim(strip_tags($_POST['property_type'])), ENT_QUOTES);
          $itm->created_at = time();
          $itm->updated_at = time();

          $controller->insertPropertyType($itm);
          echo "<script type='text/javascript'>location.href='propertytypes.php';</script>";
      }
      else {
          echo "<script>alert('Property Type exist already.');</script>";
      }
  }

?>


<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="http://getbootstrap.com/assets/ico/favicon.ico">

    <title>RealEstate Finder</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="bootstrap/css/navbar-fixed-top.css" rel="stylesheet">
    <link href="bootstrap/css/custom.css" rel="stylesheet">


    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">


        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">RealEstate Finder</a>
        </div>


        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li ><a href="home.php">Home</a></li>
            <li class="active"><a href="propertytypes.php">Property Type</a></li>
            <li ><a href="realestates.php">Real Estates</a></li>
            <li ><a href="agents.php">Agents</a></li>
            <li ><a href="admin_access.php">Admin Access</a></li>
            <li ><a href="users.php">Users</a></li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
            <li ><a href="index.php">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
        
      </div>
    </div>

    
    <div class="container">

      <div class="row">
            <div class="col-md-3">
              
            </div>


            <div class="col-md-6">
                <!-- Example row of columns -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                      <h3 class="panel-title">Add Property Type</h3>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                          <div class="col-md-6" style="width:100%;">

                            <form action="" method="POST">
                                <div class="input-group">
                                  <span class="input-group-addon"></span>
                                  <input type="text" class="form-control" placeholder="Property Type" name="property_type" required>
                                </div>
                                <br /> 
                                <p>
                                    <button type="submit" name="submit" class="btn btn-info"  role="button">Save</button> 
                                    <a class="btn btn-info" href="propertytypes.php" role="button">Cancel</a>
                                </p>
                            </form> 
                          </div>
                        </div>

                    </div>

            </div>

      </div>

      


    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    
  

</body></html>