module ApplicationHelper

  	def get_settings
    default_color = "#e7e4d8"
		settings = Setting.new
		settings = Setting.first unless Setting.first.nil?
  		settings.sitename = 'Default' unless settings.sitename.present? 
  		settings.color_top = default_color unless settings.color_top.present? 
  		settings.color_background = default_color unless settings.color_background.present? 
  		settings.color_footer = default_color unless settings.color_footer.present?
      settings.footer = 'Footer Message Here...' unless settings.footer.present?
  		settings.logo = 'image/here' unless settings.logo.url.present?
  		return settings
  	end
	
  def page_layout(page) 
      if page.content_for(:side_body).present?
      return "<div class='span8'>
              #{raw page.content_for(:body)}
            </div>
            <div class='span4'>
              #{raw page.content_for(:side_body)}
            </div>"
      else
      return "<div class='span12'>
              #{raw page.content_for(:body)}
            </div>"
      end
  end	
  
  def logout_login
    if current_refinery_user.present?
     return link_to 'Log Out',
                    refinery.destroy_refinery_user_session_path, :id => 'logout'
    else 
      return link_to 'Sign In',
                    refinery.new_refinery_user_session_path, :id => 'login'
    end
  end

	def admin_or_client_adviser?
		if current_refinery_user.id == 1 || current_refinery_user.id == 2
			return true
		else
			return false
		end
	end
end

