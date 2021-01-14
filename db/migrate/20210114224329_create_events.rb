class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :family, foreign_key: true
      t.references :report, foreign_key: true
      t.timestamps
    end
  end
end
