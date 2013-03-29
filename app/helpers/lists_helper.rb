module ListsHelper
  def random_item_link (list)
    item = list.random_item
    return "" if item.nil?

    text = item.name
    link = "http://inothnagel-random-reminder.herokuapp.com/items/#{item.id}"
    link_to(text, link)
  end
end
