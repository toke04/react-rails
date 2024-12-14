class CreateTestTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :test_types do |t|
      t.integer :status

      t.timestamps
    end
  end
end
