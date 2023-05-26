class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :profile_picture
      t.string :gender
      t.integer :age
      t.float :height
      t.float :weight
      t.string :fitness_level
      t.string :password_digest

      t.timestamps
    end
  end
end
