$(document).ready(function() {




	var span = $("<span></span>").insertBefore($("#form_button"));
	span.hide();


	
	/***************** REGISTRO DE USUARIOS ***********************************/

	//El usuraio debe empezar por @
	$("#user").click(function() {	
		$("#user").val("@");
	});
	//Comprobar contraseña registro
	$("input").keyup(function() {


		//spanEmailReg.hide();
		var valor1 = $("#pwd1").val();
		var valor2 = $("#pwd2").val();
		var reg = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/;
		var confirmacion = "Password correcto";
		var negacion = "No coincide el password";
		var longitud = "La contraseña debe tener entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.";
		if ($(this).attr("name") == "pwd1") {
			if (!reg.test(valor1)) {
				span.show().removeClass();
				span.text(longitud).addClass("negacion");
			} else {
				span.hide();
			}
		}
		if ($(this).attr("name") == "pwd2") {
			span.show().removeClass();
			span.text(negacion).addClass("negacion");
			if (reg.test(valor2)) {
				if (valor1 == valor2) {
					span.text(confirmacion).removeClass("negacion").addClass("confirmacion");
				}
			}
		}
	});



});

