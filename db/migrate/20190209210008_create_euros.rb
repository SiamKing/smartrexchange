class CreateEuros < ActiveRecord::Migration[5.2]
  def change
    create_table :euros do |t|

      t.timestamps
    end
  end
end
