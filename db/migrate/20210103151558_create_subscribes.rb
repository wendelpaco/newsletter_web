class CreateSubscribes < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email
      t.boolean :notification, default: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
