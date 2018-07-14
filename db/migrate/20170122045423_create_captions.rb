class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
    	t.text :content
    	t.string :section
    	t.string :title
      	t.timestamps null: false
    end
  end
end
