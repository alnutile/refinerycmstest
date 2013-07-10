module SettingsHelper


	def color_field(f, field, value, target) 
		if ( value != nil ) 
			color = value
		else 
			color = "rgb(0, 0, 0)"
		end

		return "    
			<div id=\"#{target}\" class=\"input-append color\" data-color=\"#{color}\" data-color-format=\"hex\">
      			#{ f.text_field field, class: target }
      			<span class=\"add-on\"><i class=\"#{target}\" style=\"background-color: #{color}\"></i></span>
    		</div>"
	end
end
