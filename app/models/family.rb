class Family < ActiveRecord::Base
  attr_accessible :name, :description, :page_title
  has_many :topics, :dependent => :destroy
  validates :page_title, length: {maximum: 45}
end
