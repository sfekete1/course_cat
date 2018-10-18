class Course < ApplicationRecord
	serialize :requirements, Array
	serialize :subjects, Array
end
