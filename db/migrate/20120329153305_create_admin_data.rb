class CreateAdminData < ActiveRecord::Migration
  def change
    create_table :admin_data do |t|
      t.string :name

      t.timestamps
    end
  end
end
