class CreateSubscripts < ActiveRecord::Migration[5.1]
  def change
    create_table :subscripts do |t|
      t.references :user, foreign_key: true
      t.references :plan, foreign_key: true
      t.string :stripe_id

      t.timestamps
    end
  end
end
