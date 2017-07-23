<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="favicon" href="../img/....">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="styleSheet" href="css/Acceuil.css">
    <script src="js/bootsrap.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <title>my site web</title>
    <script>
      $(document).ready(function(){
        $("#jumbotron2").hide();
        $(".btn").click(function(){
          $("#jumbotron1").hide();
          $("#jumbotron2").show();
        });
      });
    </script>
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
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>



      <div class="jumbotron" id="jumbotron1">
          <div class="container">
              <center>
                  <h1 id="h1">Bienvenue au Caffe <i id="italic">Fadaa Salam</i></h1>
                  <p class="serif">
                      Notre Site Est fais pour Enregitrer Tout Vos Commande ,
                      Nous esperons qu'il vous plaira . 
                  </p>
              </center>
          </div>
          <center>  
              <a class="btn btn-default" href="#"><i id="italic">Se Connecter</i></a>
              <!-- <a class="btn btn-info" href="#">Button 2</a> -->  
          </center>
      </div>
      
      <div class="jumbotron" id="jumbotron2">
        <div class="container">
           <div class="row">
                <center>
                   <h1 id="Authentification"> Authenti<i id="italic">fication</i></h1>
                </center>
              <div class="container">
              
              <form class="form-horizontal" action="AC_Login" method="post">
              
                <div class="form-group">
                  <label class="col-sm-2" for="inputLogin">Login</label>
                  <div class="col-sm-10">
                  <input class="form-control" type="text"
                  id="inputName" placeholder="Login" name="inputLogin">
                </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2" for="inputPassword">Password</label>
                  <div class="col-sm-10">
                  <input class="form-control" type="password"
                  id="formEmail" placeholder="password" name="inputPassword">
                </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2" for="msg" name="msg"></label>
                </div>
                </div>
                <center>
                <button class="btn btn-default" type="submit">Sign in</button>
                <h3><%String msg =(String)request.getAttribute("msg");
                  if(msg!=null){
        	      out.println(msg);
                 }
                 %></h3>
                </center>
                
                </form>
                
            </div>
          </div>
        </div> 
      </div>     


  </body>  


</html>  