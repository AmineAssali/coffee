<%@page import="bd.Myconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="styleSheet" href="css/Historique.css">
    <title>my site web</title>

  </head>
  <body>

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

      <%
         Connection con = Myconn.getConnection();
         String req = " select * from commandes ";
         Statement st = con.createStatement();		  
         ResultSet rs = st.executeQuery(req);		  
      %>
      <div class="jumbotron" id="jumbotron1">
        <center>
            <!--<h1 id="h1">Contacter <i id="italic">Nous</i></h1>-->
        </center>    
          <div class="container">
              <table class="table table-bordered table-hover" id="mydata">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>TYPE</th>
                    <th>Libelle</th>
                    <th>Prix</th>
                    <th>Date</th>
                  </tr>
                </thead>
                <tbody>
                <%while(rs.next()){ %>
                  <tr >
                    <td><%out.print(rs.getInt(1)) ;%></td>
                    <td><%out.print(rs.getString(2)); %></td>
                    <td><%out.print(rs.getString(3)); %></td>
                    <td><%out.print(rs.getString(4)); %></td>
                    <td><%out.print(rs.getString(5)); %></td>
                  </tr>
                  <%} %>
                </tbody>
              </table>

          </div>
      </div>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootsrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    <script>
    $("#mydata").dataTable();
    </script>
    
  </body>  


</html>  