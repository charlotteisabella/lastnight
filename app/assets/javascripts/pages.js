$(document).ready(function () {
  
  var toCopyHTML = $("div.to-copy").html();

  $("body").on("click", "p.add-new-drink", function (event) {

    var toAppend = $("<div>").addClass("to-copy").html( toCopyHTML )

    $(".to-copy:last").after( toAppend );

  });


  var drinks = gon.drinks;

  $( "#drink_" ).autocomplete({
      source: drinks
    });

  console.log( gon.drinks );

});