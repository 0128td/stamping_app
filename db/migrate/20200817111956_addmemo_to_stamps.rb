class AddmemoToStamps < ActiveRecord::Migration[5.2]
  def change
    add_column :stamps, :memo, :text
    
  end
end
