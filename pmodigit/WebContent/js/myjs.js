
 $( "document" ).ready(function() {
	  $( "div.success" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
	});

	$( "document" ).click(function() {
	  $( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
	});

	$( "document" ).click(function() {
	  $( "div.warning" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
	});
	
	$(document).ready(function(e){
	    $('.search-panel .dropdown-menu').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#","");
			var concept = $(this).text();
			$('.search-panel span#search_concept').text(concept);
			$('.input-group #search_param').val(param);
		});
	});
    $(function () {

        $("#customers").autocomplete({
            source: "../Customers",
            minLength: 1,
        });
    });
    
    $(function () {

        $("#pm").autocomplete({
            source: "../PM",
            minLength: 1,
        });
    });
    
    