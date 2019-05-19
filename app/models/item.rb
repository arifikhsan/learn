class Item < ApplicationRecord
  belongs_to :idea_set
  belongs_to :item_type
  has_many :links
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { in: 8..120 }
  validates :item_type, presence: true
  validates :idea_set, presence: true
  accepts_nested_attributes_for :links, allow_destroy: true

  def self.search(q)
  	if q.start_with?('http')
  		Link.where(url: q).first.item
  	else
  		Item.where(name: q).first
  	end
  end
end
