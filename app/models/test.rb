class Test < ApplicationRecord
  belongs_to :course
  has_many :marks
end
