module SettingsHelper


	def color_field(f, field) 
		return "    
			<div class=\"input-append color\" data-color=\"rgb(0, 0, 0)\" data-color-format=\"rgb\">
      			#{ f.text_field field }
      			<span class=\"add-on\"><i class=\"top\" style=\"background-color: rgb(0,0,0)\"></i></span>
    		</div>"
	end
end
