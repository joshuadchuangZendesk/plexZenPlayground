class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications, id: :uuid do |t|
      t.string :description
      t.boolean :active
      t.string :conditions
      t.json :actions

      t.timestamps
    end
  end
end