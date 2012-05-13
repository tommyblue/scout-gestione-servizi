class Camp < ActiveRecord::Base
  attr_accessible :comment, :end_date, :place, :start_date, :title
  has_many :helps
end
