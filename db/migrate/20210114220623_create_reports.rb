class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :headline
      t.string :content
      t.timestamps
    end
  end
end
