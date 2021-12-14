class JobPost < ApplicationRecord
	belongs_to :contractor

	validates :title, :contact, :presence =>true

	
	
end
