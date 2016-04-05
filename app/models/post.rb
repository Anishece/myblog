class Post < ActiveRecord::Base
  #attr_accessible :title, :body, :category_id, :auther_id
  belongs_to :category
end
