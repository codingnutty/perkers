class CreatePerkCategories < ActiveRecord::Migration
  def change
    create_table :perk_categories do |t|
      t.references :perk, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
