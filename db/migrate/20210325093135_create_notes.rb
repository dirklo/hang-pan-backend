class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :low_url
      t.string :mid_url
      t.string :high_url

      t.timestamps
    end
  end
end
