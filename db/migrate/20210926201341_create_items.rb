class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.column :itemname, :string
	  t.column :itemdescription, :string
	  t.column :price, :float
      t.timestamps
	end  
  end
		
end
