class Company < ApplicationRecord
	has_many :claims, dependent: :destroy
	belongs_to :user
end
