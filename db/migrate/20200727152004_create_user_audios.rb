class CreateUserAudios < ActiveRecord::Migration[6.0]
  def change
    create_table :user_audios do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :audio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
