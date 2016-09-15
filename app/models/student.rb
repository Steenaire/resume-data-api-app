class Student < ApplicationRecord

  has_many :skills
  has_many :capstones
  has_many :educations
  has_many :experiences

  accepts_nested_attributes_for :skills, allow_destroy: true
  accepts_nested_attributes_for :capstones, allow_destroy: true
  accepts_nested_attributes_for :educations, allow_destroy: true
  accepts_nested_attributes_for :experiences, allow_destroy: true
  
end
