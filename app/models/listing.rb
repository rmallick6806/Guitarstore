 class Listing < ActiveRecord::Base
	if Rails.env.development?
		has_attached_file :itemimage, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "raymallick.png"
	else 	
	has_attached_file :itemimage, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "raymallick.png",
						:storage => :dropbox,
   						:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
   						:path => ":style/:id_:filename"

	validates_attachment_content_type :itemimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	end

	validates :name, :descript, :price, presence: true
	validates :price, numericality: { great_than: 0 }
	# validates_attachment_presence :itemimage, :message => 'is empty. Make sure to attach an image!'
	belongs_to :user
	
end
	