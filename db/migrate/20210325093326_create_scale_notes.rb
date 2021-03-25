class CreateScaleNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :scale_notes do |t|
      t.integer :scale_id
      t.integer :note_id
      t.integer :position

      t.timestamps
    end
  end
end
