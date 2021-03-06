# == Schema Information
#
# Table name: item_types
#
#  id                  :string           not null, primary key
#  display_name_plural :string
#

class ItemType < ApplicationRecord
	LENGTH = [["Any Length",""],["Less than 5 minutes", "0-5"], ["5 to 15 minutes", "5-15"],["15 to 30 minutes", "15-30"], ["30 to 60 minutes", "30-60"],["1 to 3 hours", "60-180"],["More than 3 hours", "180-9999"]]
	QUALITY = [["Any Quality", ""],["inspirational", "inspirational"],["educational", "educational"],["challenging", "challenging"], ["entertaining", "entertaining"],["visual", "visual"], ["interactive", "interactive"]]

	def to_s
		self.id
	end

	def items
		Item.where(item_type: self)
	end

	def self.button_style(theme = :bootstrap)
		return "rounded-full px-4 mr-2 bg-red-200 text-black p-2 rounded leading-none" if theme == :tailwind
		"btn btn-sm btn-soft-info btn-pill"
	end

	def icon
		"/icons/#{id}.svg"
	end
end
