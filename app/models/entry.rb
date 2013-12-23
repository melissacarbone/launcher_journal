class Entry < ActiveRecord::Base
  validates :title, :format => { :with => /[a-zA-Z]+/ }
  validates :description, :format => { :with => /[a-zA-Z]+/ }

  belongs_to :category

end
