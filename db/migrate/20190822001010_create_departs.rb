class CreateDeparts < ActiveRecord::Migration[6.0]
  def change
    create_table :departs do |t|
      t.string :dpt_name

      t.timestamps
    end
  end
end
