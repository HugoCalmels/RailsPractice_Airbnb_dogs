class Dogsitter < ApplicationRecord
  has_many :strolls, :dependent => :delete_all 
  belongs_to :city
end