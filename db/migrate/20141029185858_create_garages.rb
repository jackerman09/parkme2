class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :name
      t.references :company, index: true

      t.timestamps
    end
  end
end
