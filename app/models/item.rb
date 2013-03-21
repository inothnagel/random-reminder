class Item < ActiveRecord::Base
  belongs_to :list
  attr_accessible :name, :note

  def name_and_text_string
    out = self.name
    out += " - #{self.note}" if self.note
    out
  end
end
