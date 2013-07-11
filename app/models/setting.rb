class Setting < ActiveRecord::Base
  attr_accessible :color_background, :color_footer, :color_top, :footer, :logo, :sitename

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
