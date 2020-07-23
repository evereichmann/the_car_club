class AddColumnToFans < ActiveRecord::Migration[6.0]
  def change
    add_column :fans, :img_url, :string
  end
end
