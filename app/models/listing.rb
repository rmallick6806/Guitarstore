class Listing < ActiveRecord::Base
	has_attached_file :itemimage, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "raymallick.png"
	validates_attachment_content_type :itemimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
	