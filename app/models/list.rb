class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
  attr_accessible :name, :favourite

  def self.alphabetically
    order(:name)
  end

  def random_item
    self.items.first(:offset => rand(self.items.count))
  end
end
