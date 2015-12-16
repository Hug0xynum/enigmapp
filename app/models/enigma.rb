class Enigma < ActiveRecord::Base
  belongs_to :theme
  has_many :answers
  has_many :users, through: :answers
end
