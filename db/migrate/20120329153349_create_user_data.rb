class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.string :name

      t.timestamps
    end
  end
end
