class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
    	t.integer :message_id, null: false
    	t.binary :picture, null: false

      t.timestamps null: false
    end
  end
end
