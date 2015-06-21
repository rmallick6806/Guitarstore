class Listing < ActiveRecord::Base
	if Rails.env.development?
		has_attached_file :itemimage, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "raymallick.png"
	else 	
	has_attached_file :itemimage, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "raymallick.png",
						:storage => :dropbox,
   						:dropbox_credentials => Rails.root.join("config/dropbox.yml")
   						:path => ":style/:id_:filename"
	validates_attachment_content_type :itemimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	end
end
	