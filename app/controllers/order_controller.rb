class OrderController < ApplicationController
  
  def index
    data_table = GoogleVisualr::DataTable.new
    
    # Add Column Headers
    data_table.new_column('string', 'Name' )
    data_table.new_column('date', 'Date')
    data_table.new_column('string', 'Shipping')

    # Add Rows and Values
    @orders = Order.all
    @orders.each do |order|
      data_table.add_row [order.name, order.date, order.shipping?]
    end
    
    option = { width: 600, height: 450, title: 'Total Orders' }
    @chart = GoogleVisualr::Interactive::Table.new(data_table, option)
    
  end
  
end
