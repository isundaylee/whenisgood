class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
