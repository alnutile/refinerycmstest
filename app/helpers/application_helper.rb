module ApplicationHelper

  	def get_settings
  		settings = Setting.first
  		settings.sitename = 'Default' unless settings.sitename.present? 
  		settings.color_top = '#1b1b1b' unless settings.color_top.present? 
  		settings.color_background = '#fff' unless settings.color_background.present? 
  		settings.color_footer = '#fff' unless settings.color_footer.present?
  		settings.footer = 'Footer Message Here...' unless settings.footer.present?
  		return settings
  	end
		
	def admin_or_client_adviser?
		if current_refinery_user.id == 1 || current_refinery_user.id == 2
			return true
		else
			return false
		end
	end
end

