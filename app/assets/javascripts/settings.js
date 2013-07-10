(function() {
	$('#setting_color_top').colorpicker().on('changeColor', function(ev){
  		var color = ev.color.toHex();
  		$('#setting_color_top').val(color);
  		$('i.top').css('background-color', color);
	});

}).call(this);

