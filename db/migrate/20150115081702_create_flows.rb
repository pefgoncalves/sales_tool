class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
