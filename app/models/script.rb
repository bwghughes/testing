class Script < ActiveRecord::Base
	 validates_presence_of :name
	 validates_uniqueness_of :name
	 validates_numericality_of :total_steps
end
