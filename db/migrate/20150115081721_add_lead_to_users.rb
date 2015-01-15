class AddLeadToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :lead, index: true
  end
end
