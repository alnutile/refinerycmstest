module ApplicationHelper

	def admin_or_client_adviser?
		if current_refinery_user.id == 1 || current_refinery_user.id == 2
			return true
		else
			return false
		end
	end
end

