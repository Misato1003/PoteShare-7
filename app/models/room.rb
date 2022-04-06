class Room < ApplicationRecord
    
    validates :name, presence: true
    validates :address, presence: true
    validates :price, presence: true
    validates :introduction, presence: true
    validates :image, presence:true
    
    mount_uploader :image, ImageUploader
    
    has_one :reservations, dependent: :destroy
    has_many :user, through: :reservations, dependent: :destroy
    
    accepts_nested_attributes_for :reservations
end
