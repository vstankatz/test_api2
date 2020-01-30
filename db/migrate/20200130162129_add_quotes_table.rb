class AddQuotesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.column :character, :string
      t.column :quote, :string
    end
  end
end
