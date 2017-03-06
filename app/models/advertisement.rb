class Advertisement < ActiveRecord::Base
  serialize :categories, Array
  enum position: [:pre, :mid, :post]
end
