class AddUserIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :user_id, :integer
    add_column :books, :select_a, :string
    add_column :books, :select_b, :string
    
  end
end
