class CreateMicroposrs < ActiveRecord::Migration[5.1]
  def change
    create_table :microposrs do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
