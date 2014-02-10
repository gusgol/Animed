// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Loads all Bootstrap javascripts
//= require bootstrap


$(document).ready(function(){
	$("#animed-logo").click(function() {
		var sDisplay = $(".animed-nav-menu").css("display");
		if(sDisplay=="block") {
			$(".animed-nav-menu").css("display","none");
		} else {
			$(".animed-nav-menu").css("display","block");
		}
	});
});


//Method created to capitalize the inputs provided by the user
function capitalizeField(form, field) {
	var x = document.forms[form][field].value;
	var xlist = x.split(" ");
	var result = "";
	for(var i=0; i < xlist.length; i++) {
		var xcap = xlist[i].replace(/^[a-z]/, function(m){ return m.toUpperCase() });
		result = result + xcap + " ";
	}
	document.forms[form][field].value = result;
}

function cpfUpdate() {
	var x = document.forms["client_form"]["cpfValue"].value;
	x=x.replace(/\D/g,"");
	x=x.replace(/(\d{3})(\d)/,"$1.$2");
	x=x.replace(/(\d{3})(\d)/,"$1.$2");
	x=x.replace(/(\d{3})(\d{1,2})$/,"$1-$2");
	document.forms["client_form"]["cpfValue"].value = x;
}

function cepUpdate(){
	var x = document.forms["client_form"]["cepValue"].value;
	x=x.replace(/D/g,"");
	x=x.replace(/^(\d{5})(\d)/,"$1-$2");
	document.forms["client_form"]["cepValue"].value = x;
} 