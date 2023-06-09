class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :user_id
      t.string :address
      t.text :details
      t.string :photo

      t.timestamps
    end
  end
end
