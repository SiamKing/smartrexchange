class CreateUsDollars < ActiveRecord::Migration[5.2]
  def change
    create_table :us_dollars do |t|

      t.timestamps
    end
  end
end
