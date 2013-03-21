class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
  attr_accessible :name

  def random_item
    self.items.first(:offset => rand(self.items.count))
  end
end
