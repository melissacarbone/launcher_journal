class User < ActiveRecord::Base
  has_many :entries

  validates :name, :format => { with: /[a-zA-Z]/}
end
