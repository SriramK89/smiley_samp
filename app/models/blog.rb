class Blog < ActiveRecord::Base
  attr_accessible :content, :title
  validates :title, presence: true, length: { :in => 3..50 }
  validates :content, presence: true, length: { :in => 5..10000 }
end
