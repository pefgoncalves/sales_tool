class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :contact
      t.string :company
      t.string :status
      t.string :email
      t.string :phones
      t.references :user, index: true
      t.references :flow, index: true
      t.string :extra

      t.timestamps
    end
  end
end
