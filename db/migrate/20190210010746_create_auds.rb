class CreateAuds < ActiveRecord::Migration[5.2]
  def change
    create_table :auds do |t|

      t.timestamps
    end
  end
end
