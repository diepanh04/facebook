class Comment < ApplicationRecord
    belongs_to :user 
    has_many :likes, as: :likable 

    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable  
end
