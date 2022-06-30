class Post < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "user_id"

    has_many :likes, as: :likable

    has_many :comments, as: :commentable 
    accepts_nested_attributes_for :comments 
end


