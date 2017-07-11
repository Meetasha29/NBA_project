class Course < ApplicationRecord

  validates :cid, :presence=>true
	validates :cname, :presence=>true
  validates :grade_point,:numericality=> {:greater_than_or_equal_to => 0,:only_integer=>true}
  validates :max_students,:numericality=> {:greater_than_or_equal_to => 0,:only_integer=>true}
  validates :min_students,:numericality=> {:greater_than_or_equal_to => 0,:only_integer=>true}


  scope :sorted, lambda { order("courses.cname ASC") }


end
