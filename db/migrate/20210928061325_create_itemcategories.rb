class CreateItemcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :itemcategories do |t|
      t.column :itemcategoriesname, :string
	  t.column :description, :string
      t.timestamps
    end
    Itemcategory.create :itemcategoriesname => "Books"
    Itemcategory.create :itemcategoriesname => "Electronics"
    Itemcategory.create :itemcategoriesname => "Furniture"
    Itemcategory.create :itemcategoriesname => "Automobile"
  end
  def self.down
      drop_table :itemcategories
  end  
end
