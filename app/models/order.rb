class Order < ActiveRecord::Base
  attr_accessible :date, :name, :shipping
end
