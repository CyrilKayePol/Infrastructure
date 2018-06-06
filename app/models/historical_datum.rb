class HistoricalDatum < ActiveRecord::Base
	has_attached_file :image, 
	  :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
	  :url => "/system/:attachment/:id/:style/:filename", 
	  :styles => { :med => "300x500>", :thumb => "100x100>" },
	  :default_url => "/images/noimage.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	#validates :image, attachment_presence: true
end
