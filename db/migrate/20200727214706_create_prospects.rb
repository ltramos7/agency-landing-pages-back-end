class CreateProspects < ActiveRecord::Migration[6.0]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
