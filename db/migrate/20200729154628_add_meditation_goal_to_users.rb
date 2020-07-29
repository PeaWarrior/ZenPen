class AddMeditationGoalToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :meditation_goal, :integer
  end
end
