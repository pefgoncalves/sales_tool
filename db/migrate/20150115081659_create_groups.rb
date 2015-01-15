class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :flow, index: true
      t.boolean :active

      t.timestamps
    end
  end
end
