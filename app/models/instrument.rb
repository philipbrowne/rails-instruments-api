class Instrument < ApplicationRecord
    validates :name, presence: true
    validates :family, presence: true  
    validates :price, presence: true
end
