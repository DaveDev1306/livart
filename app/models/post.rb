class Post < ApplicationRecord
  belongs_to :user
  belongs_to :art_work
end
