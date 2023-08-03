class Page < ApplicationRecord

    has_many :comments, dependent: :destroy

end
