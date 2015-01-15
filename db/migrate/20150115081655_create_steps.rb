class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.references :flow, index: true
      t.references :message, index: true
      t.boolean :active
      t.integer :step
      t.integer :interval

      t.timestamps
    end
  end
end
