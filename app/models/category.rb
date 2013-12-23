class Category < ActiveRecord::Base
  has_many :entries

  validates_uniqueness_of :name
end
