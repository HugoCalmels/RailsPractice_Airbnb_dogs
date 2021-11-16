class City < ApplicationRecord
  has_many :dogs, :dependent => :delete_all
  has_many :dogsitters, :dependent => :delete_all
end
