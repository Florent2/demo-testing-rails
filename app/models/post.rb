class Post < ActiveRecord::Base
  def displayed_title
    title.present? ? title : "no title"
  end
end
