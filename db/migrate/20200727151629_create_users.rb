class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.text :meditation_dates
      t.integer :meditation_goal
      t.integer :writing_goal

      t.timestamps
    end
  end
end
