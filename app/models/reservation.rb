class Reservation < ApplicationRecord
  before_create :current_user
  belongs_to :user

end
