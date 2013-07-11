(function() {
	$('#top, #background, #footer').colorpicker().on('changeColor', function(ev){
  			var color = ev.color.toHex();
  			var bodyStyle = $('body')[0].style;
  			$('.'+$(this).attr('id')).val(color);
  			if($(this).attr('id') == 'background') {
  				bodyStyle.backgroundColor = color;
  			}

  			if($(this).attr('id') == 'top') {
  				$('.navbar-inverse .navbar-inner').css('background-color', color);
  				$('.navbar-inverse .navbar-inner').css('background-image', 'none');
  				$('.navbar-inverse .navbar-inner').css('border-color', color);
  			}

  			if($(this).attr('id') == 'footer') {
  				$('footer').css('background-color', color);
  			}
	});

}).call(this);

