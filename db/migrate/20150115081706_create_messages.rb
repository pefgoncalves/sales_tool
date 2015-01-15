class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :subject
      t.text :text
      t.boolean :active

      t.timestamps
    end
  end
end
