class Reservation < ApplicationRecord
  belongs_to :user

  validates :name, :presence => true
  validates :notes, :presence => true
  validates :start_time, :presence => true
  validates :start_time, uniqueness: {
   message: "That start date is already taken!" }
  validates :end_time, :presence => true
  validates :end_time, uniqueness: {
  message: "That end date is already taken!" }
end
