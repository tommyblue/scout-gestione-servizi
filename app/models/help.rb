class Help < ActiveRecord::Base
  attr_accessible :comment, :email, :end_date, :name, :start_date, :camp_id
  belongs_to :camp
end
