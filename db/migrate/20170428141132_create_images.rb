class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
    	belongs to:student

      t.timestamps
    end
  end
end
