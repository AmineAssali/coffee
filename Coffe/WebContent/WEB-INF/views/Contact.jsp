<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="styleSheet" href="css/Contact.css">
    <title>my site web</title>
    <!--<script>
      $(document).ready(function(){
        $("#jumbotron2").hide();
        $(".btn").click(function(){
          $("#jumbotron1").hide();
          $("#jumbotron2").show();
        });
      });
    </script>-->
  </head>
  <body class="body">

      <nav class="navbar navbar">
        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" id="cover">Cover</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" id="ul">
              <a class="navbar-brand" href="Controlle?op=Acceuil" id="ul">Aceuil</a>
              <a class="navbar-brand" href="Controlle?op=Historique" id="ul">Factures</a>
              <a class="navbar-brand" href="Controlle?op=Contact" id="ul">Contact</a>
              <!--<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li> -->
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>

      <div class="jumbotron" id="jumbotron1">
        <center>
            <h1 id="h1">Contacter <i id="italic">Nous</i></h1>
        </center>    
          <div class="container">
              <form class="form-horizontal" action="SendEmail" method="post">
                <div class="form-group">
                  <label class="col-sm-2" for="inputName">From</label>
                  <div class="col-sm-10">
                  <input class="form-control" type="email"
                  id="inputName" placeholder="From" name="FromMail">
                </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2" for="inputName">Password</label>
                  <div class="col-sm-10">
                  <input class="form-control" type="password"
                  id="inputName" placeholder="password" name="Password">
                </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2" for="inputEmail">TO</label>
                  <div class="col-sm-10">
                  <input class="form-control" type="email"
                  id="formEmail" placeholder="TO" name="ToMail">
                </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2" for="inputEmail">Subject</label>
                  <div class="col-sm-10">
                  <input class="form-control" type="Mail"
                  id="formEmail" placeholder="Subject" name="Subject">
                </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 controle-label" for="inputComments"
                  >Message</label>
                  <div class="col-sm-10">
                    <textarea class="form-control" id="inputComments"
                    placeholder="Message" name="Message"></textarea>
                  </div>  
                </div>
                <input type="submit" class="btn btn-success" value=" Envoyer "> 
              </form>
          </div>
      </div>


    <script src="js/jquery.js"></script>
    <script src="js/bootsrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/script.js"></script>
  </body>  


</html>    