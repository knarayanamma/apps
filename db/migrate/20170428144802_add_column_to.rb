class AddColumnTo < ActiveRecord::Migration[5.0]
  def change
  	add_attachments :students,photo
  end
end
