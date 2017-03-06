class Episode < ActiveRecord::Base
  belongs_to :podcast

  enum category: [:politics, :art, :music, :economics, :technology]
  enum ad_position: [:pre, :mid, :post]
end
