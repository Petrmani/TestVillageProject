class Village < ActiveRecord::Base
	belongs_to :user
	has_one :building_level
end
