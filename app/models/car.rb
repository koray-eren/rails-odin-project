class Car < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy

    validates :make, presence: true
    validates :model, presence: true
    validates :year, presence: true
    
end
