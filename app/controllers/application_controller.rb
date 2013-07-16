class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_headers
    response.headers['X-XSS-Protection'] = "0"
  end
  
	private
	  def logged_in
	  	if refinery_user? == false
	  		redirect_to refinery.new_refinery_user_session_path,
                    :flash => ({ :error => 'Sorry, you need to login to see this page.' })
	  	end
	  end
end
