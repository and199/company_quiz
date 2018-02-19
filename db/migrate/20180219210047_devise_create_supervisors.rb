# frozen_string_literal: true

class DeviseCreateSupervisors < ActiveRecord::Migration[5.1]
  def change
    create_table :supervisors do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps null: false
    end

    add_index :supervisors, :email,                unique: true
  end
end
