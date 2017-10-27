$(document).ready(function() {
	loginSubmit();
	loginShow();
	// signUpSubmit();
	signUpShow();
	inputIngredient();
});

var loginSubmit = function(){
	$(".login-form").on("submit", function(e){
		e.preventDefault();

		var loginSubmit = $(this);
		var url = loginSubmit.attr("action");
		var method = loginSubmit.attr("method");
		var data = loginSubmit.serialize();
		$loginSubmit.find('.login-submit').attr('value')

		var request = $.ajax({
			url: url,
			method: method,
			data: data
		})
		request.done(function(response){
			form.before(response);
		})
		request.fail(function(error){
		})
		$loginSubmit.parent().find('.login-submit').text(response);
	})
};


var loginShow = function() { 
	$(".login-show-link").on("click", function(e) {
		e.preventDefault();

		var loginShow = $(this)
		var url = loginShow.attr("href")
		
		var request = $.ajax({
			url: url, 
			method: 'get'
		})
		request.done(function(response){
			$('.login-links').replaceWith(response);
		})

	})
}

// var signUpSubmit = function(){

// }
var signUpShow = function(){
	$(".sign-up-form").on("click", function(e){
		e.preventDefault();

		var signUpShow = $(this);
		var url = signUpShow.attr("href");

		var request = $.ajax({
			url: url,
			method: 'get'
		})
		request.done(function(response){
			$('.sign-up-form').replaceWith(response);
		})
		request.fail(function(error){
		})

	})
};

var inputIngredient = function(){
	$(".input-ingredient").on("submit", function(e){
		e.preventDefault();

		var ingredientForm = $(this);
		var url = ingredientForm.attr("action");
		var method = ingredientForm.attr("method");
		var data = ingredientForm.serialize();

		var request = $.ajax({
			url: url,
			method: method,
			data: data
		})
		request.done(function(response){
			form.before(response);
		})
		request.fail(function(error){
		})
	})
};