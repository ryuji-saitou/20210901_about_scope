class Post < ApplicationRecord
  belongs_to :user
  
  scope :search_title_specific, -> { where(title: "Intouchables") } # タイトルが"Intouchables"のデータのみ取得
  scope :search_title_ambiguous, -> { where("title LIKE ?", "%nt%") } # タイトルに"nt"が含まれるデータのみ取得
  scope :search_title_ambiguous_limit, -> { where("title LIKE ?", "%nt%").limit(5) } # タイトルに"nt"が含まれるデータを5件のみ取得
  scope :search_title_ambiguous_argument, -> (count){ where("title LIKE ?", "%nt%").limit(count) } # タイトルに"nt"が含まれるデータを(count)件のみ取得
  scope :search_title_ambiguous_argument_order, -> (count){ where("title LIKE ?", "%nt%").limit(count).order(id: "DESC") } # タイトルに"nt"が含まれるデータを(count)件取得し、タイトルを降順に並べ替える
end
