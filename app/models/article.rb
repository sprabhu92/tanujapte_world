class Article < ActiveRecord::Base
belongs_to :category

validates_presence_of :title, :content

scope :active, where('active =?', true)
scope :alpahbetical, order('name')
end
