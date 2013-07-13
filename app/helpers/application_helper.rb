module ApplicationHelper

  	def get_settings
		settings = Setting.new
		settings = Setting.first unless Setting.first.nil?
  		settings.sitename = 'Default' unless settings.sitename.present? 
  		settings.color_top = '#1b1b1b' unless settings.color_top.present? 
  		settings.color_background = '#fff' unless settings.color_background.present? 
  		settings.color_footer = '#fff' unless settings.color_footer.present?
  		settings.footer = 'Footer Message Here...' unless settings.footer.present?
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

	def admin_or_client_adviser?
		if current_refinery_user.id == 1 || current_refinery_user.id == 2
			return true
		else
			return false
		end
	end
end

