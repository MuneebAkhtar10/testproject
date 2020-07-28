class Project < ApplicationRecord
  validates_associated :bugs
	validates :title, presence: true,
                    length: { minimum: 5 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

  belongs_to :user
  has_many :bugs, dependent: :destroy
end
