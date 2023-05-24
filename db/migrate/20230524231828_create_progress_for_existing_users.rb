class CreateProgressForExistingUsers < ActiveRecord::Migration[7.0]
  def up
    User.find_each do |user|
      user.create_progress unless user.progress
    end
  end

  def down
    Progress.delete_all
  end
end
