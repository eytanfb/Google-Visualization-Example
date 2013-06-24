class Order < ActiveRecord::Base
  attr_accessible :date, :name, :shipping
  
  def shipping?
    self.shipping == true ? "Yes" : "No"
  end
end
