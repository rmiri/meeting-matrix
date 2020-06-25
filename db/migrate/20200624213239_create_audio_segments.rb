class CreateAudioSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :audio_segments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :conference, null: false, foreign_key: true
      t.time :audioStart
      t.time :audioEnd

      t.timestamps
    end
  end
end
