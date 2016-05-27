class Title < ActiveRecord::Base
	has_one :author, dependent: :destroy
	has_one :genre, dependent: :destroy
end
