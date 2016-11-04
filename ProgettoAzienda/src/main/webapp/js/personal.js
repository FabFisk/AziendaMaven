/**
 * 
 */

function cerca(){
	
	var name 	= $("#nome").val();
	var surname = $("#cognome").val();
	
	var dataInput = "nome="+name+"&cognome="+surname;
	
	 $.ajax({
		  
		  type	   : "POST", 
		  url 	   : "../logic/trovaVoce.jsp",
		  data	   :  dataInput, 
		  dataType : 'JSON' ,
		  		  
		  success: function(data,txtStatus,jqXHR){
			  /// se tutto va bene e riceviamo i dati dal server
			  
			  if(data.success){				  
				  $("#risposta").html("");
				  $("#risposta").append("<td>1</td>");
				  $("#risposta").append("<td>" + data.voce.nome+"</td>");
				  $("#risposta").append("<td>" + data.voce.cognome+"</td>");
				  $("#risposta").append("<td>" + data.voce.tel+"</td>");
				  $("#risposta").append("<td class=\"center\"><a class=\"btn btn-info\" href=\"#\"><i class=\"glyphicon glyphicon-edit icon-white\"></i> Edit</a>" +
				  											"<a class=\"btn btn-danger\" href=\"#\"><i class=\"glyphicon glyphicon-trash icon-white\"></i> Delete</a></td>");
			  }else{
				  $("#risposta").html("");
				  $("#risposta").append("<td>1</td>");
				  $("#risposta").append("<td></td>");
				  $("#risposta").append("<td></td>");
				  $("#risposta").append("<td></td>");
				  $("#risposta").append("<td>Il contatto cercato non è presente in Rubrica!</td>");
			  }
		  } 
	   		,
	   	  error: function(jqXHR,txtStatus){
		  // se sucesso qualcosa 
		  console.log(txtStatus);		  
	   	  }		  
	  });
//	alert(nome+" "+cognome);	
}