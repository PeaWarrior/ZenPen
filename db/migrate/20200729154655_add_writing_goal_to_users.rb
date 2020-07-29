class AddWritingGoalToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :writing_goal, :integer
  end
end
