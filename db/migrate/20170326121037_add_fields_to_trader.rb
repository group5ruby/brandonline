class AddFieldsToTrader < ActiveRecord::Migration[5.0]
  def change
    add_column :traders, :name, :string
    add_column :traders, :address, :string
    add_column :traders, :phone, :string
    add_column :traders, :cmnd, :string
    add_column :traders, :avatar, :string
    add_column :traders, :brithday, :datetime
  end
end
