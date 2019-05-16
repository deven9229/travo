class ChangeCidTocidOnGuides < ActiveRecord::Migration[5.2]
  def change
  	rename_column :guides, :CID, :cid
  end
end
