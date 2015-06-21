class AddAttachmentItemimageToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :itemimage
    end
  end

  def self.down
    remove_attachment :listings, :itemimage
  end
end
