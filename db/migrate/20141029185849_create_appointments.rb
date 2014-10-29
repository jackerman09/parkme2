class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :car, index: true
      t.references :garage, index: true

      t.timestamps
    end
  end
end
