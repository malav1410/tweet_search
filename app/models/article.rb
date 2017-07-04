class Article < ApplicationRecord
  searchkick word_start: [:author, :title, :des]

  def search_data
    attributes.merge(
      author: self.author,
      titile: self.title,
      des: self.des
    )
  end
end
