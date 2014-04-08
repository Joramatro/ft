$(function(){ 
    $("#btnGuardarPubli").live('click', function() {
    	//check name channel is not repeated
//    	if(channelExists){
//    		alert("channel name repeated");
//    		return;
//    	}
    	$.ajax({
		      type: "POST",
		      url: "/edicion/guardarPublicacion",
		      dataType: "html",
		      cache: false,
	          data: {
	        	  "titulo": $("#titulo").val(),
	        	  "descripcion": $("#descripcion").val(),
	        	  "resumen": $("#resumen").val(),
	        	  "articulo": $("#articulo").val(),
	        	  "clase1": $("#clase1").val(),
	        	  "clase2": $("#clase2").val(),
	        	  "clase3": $("#clase3").val(),
	        	  "clase4": $("#clase4").val(),
	        	  "clase7": $("#clase7").val(),
	        	  "clase10": $("#clase10").val(),
	        	  "clase11": $("#clase11").val(),
	        	  "clase12": $("#clase12").val(),
	        	  "tipo": $("#tipo").val(),
	        	  "autor": $("#autor").val(),
	        	  "googleAutor": $("#googleAutor").val(),
	        	  "portada": $("#portada").val(),
	        	  "destacado": $("#destacado").val(),
	        	  "numeros": $("#numeros").val(),
	        	  "tituloPortada": $("#tituloPortada").val(),
	        	  "descPortada": $("#descPortada").val(),
	        	  "titulo2": $("#titulo2").val(),
	        	  "script": $("#script").val(),
	        	  "script2": $("#script2").val(),
	        	  "script21": $("#script21").val(),
	        	  "script22": $("#script22").val(),
	        	  "script31": $("#script31").val(),
	        	  "script32": $("#script32").val(),
	        	  "script41": $("#script41").val(),
	        	  "script42": $("#script42").val(),
	        	  "script51": $("#script51").val(),
	        	  "script52": $("#script52").val(),
	        	  "disponible": $("#disponible").val()
	          },
		      success: function(text){
//		    	  var nameChn = ($("#nameChannel").val()).replace(/\s/g , "-")
//		    	  $("#startChannel-form").attr("action", "/ch/" + nameChn);
//		    	  $("#nameChannelUpload").val($("#nameChannel").val());
		      }
		    });
    });
});

$(function(){ 
    $("#btnGuardarIrFotos").live('click', function() {
    	//check name channel is not repeated
//    	if(channelExists){
//    		alert("channel name repeated");
//    		return;
//    	}
    	$.ajax({
		      type: "POST",
		      url: "/edicion/guardarEdicionFotosPub",
		      dataType: "html",
		      cache: false,
	          data: {
	        	  "titulo": $("#titulo").val(),
	        	  "descripcion": $("#descripcion").val(),
	        	  "resumen": $("#resumen").val(),
	        	  "articulo": $("#articulo").val(),
	        	  "clase1": $("#clase1").val(),
	        	  "clase2": $("#clase2").val(),
	        	  "clase3": $("#clase3").val(),
	        	  "clase4": $("#clase4").val(),
	        	  "clase7": $("#clase7").val(),
	        	  "clase10": $("#clase10").val(),
	        	  "clase11": $("#clase11").val(),
	        	  "clase12": $("#clase12").val(),
	        	  "tipo": $("#tipo").val(),
	        	  "autor": $("#autor").val(),
	        	  "googleAutor": $("#googleAutor").val(),
	        	  "portada": $("#portada").val(),
	        	  "destacado": $("#destacado").val(),
	        	  "numeros": $("#numeros").val(),
	        	  "tituloPortada": $("#tituloPortada").val(),
	        	  "descPortada": $("#descPortada").val(),
	        	  "titulo2": $("#titulo2").val(),
	        	  "script": $("#script").val(),
	        	  "script2": $("#script2").val(),
	        	  "script21": $("#script21").val(),
	        	  "script22": $("#script22").val(),
	        	  "script31": $("#script31").val(),
	        	  "script32": $("#script32").val(),
	        	  "script41": $("#script41").val(),
	        	  "script42": $("#script42").val(),
	        	  "script51": $("#script51").val(),
	        	  "script52": $("#script52").val(),
	        	  "disponible": $("#disponible").val()
	          },
		      success: function(text){
//		    	  var nameChn = ($("#nameChannel").val()).replace(/\s/g , "-")
//		    	  $("#startChannel-form").attr("action", "/ch/" + nameChn);
//		    	  $("#nameChannelUpload").val($("#nameChannel").val());
		      }
		    });
    });
});



function validateEmail(email) {   
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

//function validarEmail(){
//	  var email = $("#newsletter_input").val();
//	  if (validateEmail(email)) {
//		alert("Gracias por suscribirte a nuestras noticias");
//	    return true;
//	  } else {
//	    alert("Por favor, introduce un email correcto");
//	  }
//	  return false;
//	}

$(function(){ 
    $("#btnSuscripcion").on('click', function() {
	  var email = $("#newsletter_input").val();
		  if (validateEmail(email)) {
	    	$.ajax({
			      type: "POST",
			      url: "/suscribir",
			      dataType: "html",
			      cache: false,
		          data: {
		        	  "email": $("#newsletter_input").val()
		          },
			      success: function(text){
			    	  Apprise("Please follow the guidelines showed on the new opened screen. Thanks to subscribe to our news!");
			    	  $("#newsletter_input").val("");
			      }
			    });
	    }else {
		    alert("Please introduce your email and follow the guidelines.");
		}
    });
});

function validarComentarios(){
	  var email = $("#comEmail").val();
	  if (!validateEmail(email)) {  
	    alert("Please enter a correct email");
	    return false;
	  }
	  if($("#comNombre").val() =="" || $("#comComentario").val() == ""){
		  alert("Please fill in mandatory fields (*)");
		  return false;
	  }
	  return true;
}


$(function(){ 
    $("#btnContact").on('click', function() {
	  var email = $("#emailContact").val();
	  if (validateEmail(email)) {
	  	  $.ajax({
			      type: "POST",
			      url: "/contactar",
			      dataType: "html",
			      cache: false,
		          data: {
		        	  "email": $("#emailContact").val(),
		        	  "name": $("#nameContact").val(),
		        	  "message": $("#messageContact").val()
		          },
			      success: function(text){
			    	  Apprise("We received your message. We will get back to you as soon as we can. Thanks!");
			    	  $("#newsletter_input").val("");
			    	  $("#emailContact").val("");
			    	  $("#nameContact").val("");
			    	  $("#messageContact").val("");
			      }
			    });
	  }else {
		    alert("Please enter a correct email");
		  }
	    });
});

function replyComment(nbrComment){
	$("#nbrComment").val(nbrComment);
}


$(function(){
	
	    $("a[id^='filter1']").on('click', function() {
//	    	alert($(this).attr('class'));
//			alert($('#optionSet2 .selected').attr('class'));
			var myclass = $('#optionSet2 .selected').attr('class');
    		myclass = myclass.replace(' selected','');
    		myclass = myclass.replace('selected','');
    		var myclass2 = $(this).attr('class');
    		myclass2 = myclass2.replace(' selected','');
    		myclass2 = myclass2.replace('selected','');
	    	if($('#optionSet2 .selected').attr('class')=='selected' && myclass2==''){
	    		$('#portfolio-wrapper').isotope({ filter: '*'});
	    	}else if($('#optionSet2 .selected').attr('class')=='selected'){
	    		$('#portfolio-wrapper').isotope({ filter: '.'+ myclass2+'' });
	    	}else if(myclass2==''){
	    		$('#portfolio-wrapper').isotope({ filter: '.'+myclass+'' });
	    	}else{
	    		
				$('#portfolio-wrapper').isotope({ filter: '.'+myclass2+myclass+''});
	    	}
	    	ga('send', 'event', 'Filtros', 'Filtro1', myclass2);
	    });
	
		$("a[id^='filter2']").on('click', function() {
//			alert($(this).attr('class'));
//			alert($('#optionSet1 .selected').attr('class'));
			var myclass = $('#optionSet1 .selected').attr('class');
    		myclass = myclass.replace(' selected','');
    		myclass = myclass.replace('selected','');
    		var myclass2 = $(this).attr('class');
    		myclass2 = myclass2.replace(' selected','');
    		myclass2 = myclass2.replace('selected','');
			if($('#optionSet1 .selected').attr('class')=='selected' && myclass2==''){
	    		$('#portfolio-wrapper').isotope({ filter: '*'});
	    	}else if($('#optionSet1 .selected').attr('class')=='selected'){
	    		$('#portfolio-wrapper').isotope({ filter: '.'+ myclass2+'' });
	    	}else if(myclass2==''){
	    		$('#portfolio-wrapper').isotope({ filter: '.'+myclass+'' });
	    	}else{
	    		
				$('#portfolio-wrapper').isotope({ filter: '.'+myclass+myclass2+''});
	    	}
			ga('send', 'event', 'Filtros', 'Filtro2', myclass2);
		});

});
