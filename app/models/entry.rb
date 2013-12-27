class Entry < ActiveRecord::Base
  validates :title, :format => { :with => /[a-zA-Z]+/ }
  validates :description, :format => { :with => /[a-zA-Z]+/ }

  belongs_to :category
  belongs_to :user

  def self.most_recent
   order('created_at desc')
  end

end
