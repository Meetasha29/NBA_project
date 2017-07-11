class Department < ApplicationRecord

  validates :did, :presence=>true
	validates :dname, :presence=>true

  scope :sorted, lambda { order("departments.dname ASC") }

end
