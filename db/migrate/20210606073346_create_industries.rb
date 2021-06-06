class CreateIndustries < ActiveRecord::Migration[6.1]
  def change
    create_table :industries do |t|
      t.string :name, :slug
      t.timestamps
    end
  end
end
