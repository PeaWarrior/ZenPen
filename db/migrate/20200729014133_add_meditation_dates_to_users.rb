class AddMeditationDatesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :meditation_dates, :text
  end
end
