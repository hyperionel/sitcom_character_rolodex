class SitcomCharacter < ApplicationRecord
    serialize :address
    serialize :company

    validates_hash_keys :address do
        validates :street, presence: true
        validates :suite, presence: true
        validates :city, presence: true
        validates :zipcode, presence: true
        validates :geo, presence: true
    end

    validates_hash_keys  :company do
        validates :name, presence: true
        validates :catch_phrase, presence: true
        validates :bs, presence: true
    end

    validates_presence_of :name
    validates_presence_of :username
    validates_presence_of :email
    validates_presence_of :website
    validates_presence_of :phone
end