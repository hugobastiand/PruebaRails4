class CreateClaims < ActiveRecord::Migration[5.0]
  def change
    create_table :claims do |t|
      t.text :claim
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
