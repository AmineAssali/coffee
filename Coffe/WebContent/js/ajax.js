      function Controller(op){
//    	var op = $('#op').val();
//  		$.ajax({
//  			url:'Controlle',
//  			data:{op},
//  			type:'GET',
//  			dataType:'html',
//  			success:function(code_html, status){
//  				document.getElementById('msg').innerHTML=code_html;
//  			},
//  			error : function (resultat, status, erreur){
//  				alert(erreur);  
//  			}
//  		});
  		var xhr;
  		if(window.XMLHttpRequest){
  			xhr=new XMLHttpRequest();		
  		}	
  		if(xhr){
  			var url="Controlle?op="+op;
  			//console.log(url);
  			xhr.open("GET", url, true);
  			xhr.onreadystatechange=function(){
  				if(xhr.readyState==4 && xhr.status==200){
  					console.log(xhr.status);
  					//document.getElementById("res").innerHTML=xhr.responseText;
  				}else{
  					//document.getElementById("d").innerHTML="wait....";
  				}
  			};
  			xhr.send();
  		}else{
  			alert("AJAX non supporté par votre navigateur");
  		}
  	  }
      

      function Commandes(){
//      	var op = $('#op').val();
    		var xhr;
    		if(window.XMLHttpRequest){
    			xhr=new XMLHttpRequest();		
    		}	
    		if(xhr){
    			//xhr.open("GET", "date.jsp", true);
    			var url="Controlle";
    			console.log(url);
    			xhr.open("GET", url, true);
    			xhr.onreadystatechange=function(){
    				if(xhr.readyState==4 && xhr.status==200){
    					console.log(xhr.status);
    					document.getElementById("res").innerHTML=xhr.responseText;
    				}else{
    					document.getElementById("d").innerHTML="wait....";
    				}
    			};
    			xhr.send();
    		}else{
    			alert("AJAX non supporté par votre navigateur");
    		}
    	  }
        
      
