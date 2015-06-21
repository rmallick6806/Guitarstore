class AddAttachmentStoreimagesToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :storeimagess
    end
  end

  def self.down
    remove_attachment :listings, :storeimagess
  end
end
