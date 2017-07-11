class Faculty < ApplicationRecord
  validates :fid, :presence=>true
  validates :fname, :presence=>true

  scope :sorted, lambda { order("faculties.fname ASC") }
end
