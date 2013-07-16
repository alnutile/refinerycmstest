(function() {
	$('#top, #background, #footer').colorpicker().on('changeColor', function(ev){
  			var color = ev.color.toHex();
  			var bodyStyle = $('body')[0].style;
  			$('.'+$(this).attr('id')).val(color);
  			if($(this).attr('id') == 'background') {
  				bodyStyle.backgroundColor = color;
  			}

  			if($(this).attr('id') == 'top') {
          console.log(color);
  				$('.top-area-wrapper').css('background-color', color);
  				$('.top-area-wrapper').css('background-image', 'none');
  				$('.top-area-wrapper').css('border-color', color);
  			}

  			if($(this).attr('id') == 'footer') {
  				$('footer').css('background-color', color);
  			}
	});

}).call(this);

