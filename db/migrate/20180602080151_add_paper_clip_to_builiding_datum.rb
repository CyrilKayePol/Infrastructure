class AddPaperClipToBuilidingDatum < ActiveRecord::Migration
  def change
	add_attachment :building_data, :image
  end
end
