(function() {
	$('#top, #background, #footer').colorpicker().on('changeColor', function(ev){
  			var color = ev.color.toHex();
  			console.log(color)
  			$('.'+$(this).attr('id')).val(color);
	});

}).call(this);

