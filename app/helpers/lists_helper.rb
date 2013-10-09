module ListsHelper
  def random_item_link (list)
    item = list.random_item
    return "" if item.nil?

    text = item.name
    link = item.try(:url)
    if link.blank?
    	link = "http://inothnagel-random-reminder.herokuapp.com/items/#{item.id}"
    end
    link_to text, link, :target => "_blank"
  end
end
