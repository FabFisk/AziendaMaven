/**
 * 
 */

$(document).ready(function(){
	
	$("#button").click(function(){
		
		alert("ciao");
		
	});
	
});



//jQuery(document).ready(function() {
//	
//	$("#btn").click(function(){
//			
//	  var dataInserito=$("#txt").val();
//	  
//	  // parametri dentro url => http:// ...  ?matricola=valore 
//	  var parametroInput="matricoloa="+dataInserito;
//		  
//	  $.ajax({	  
//		  type: "POST", 
//		  url : "prendiStudente",
//		  data:parametroInput , //
//		  dataType : "JSON" ,
//		  
//		  success: function(data,txtStatus,jqXHR){
//			  /// se tutto va bene e riceviamo i dati dal server
//			  
//			  if(data.success){	  
//				  $("#risposta").html("");
//				  $("#risposta").append("<p>nome =" + data.studente.nome+"</p>");
//				  $("#risposta").append("<p>cognome =" + data.studente.cognome+"</p>");
//			  }else{
//				  $("#risposta").html("");
//				  $("#risposta").append("<p> quello studente non esiste </p>");
//			  }
//		  } 
//	   ,
//		  
//	  error: function(jqXHR,txtStatus,erroreLanciato){
//		  // se sucesso qualcosa 
//		  
//		  console.log("qualcosa e' andato male :" +txtStatus);
//	  }
//	  });	  
//	//  alert(dataInserito);		
//	});
//});
//
//
//
