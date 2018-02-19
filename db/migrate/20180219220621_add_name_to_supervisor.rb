class AddNameToSupervisor < ActiveRecord::Migration[5.1]
  def change
    add_column :supervisors, :name, :string
  end
end
