require 'rails_helper'

RSpec.describe Reservation, type: :model do
  
  it { should validate_presence_of :name }
  it { should validate_presence_of :notes }
  it { should validate_uniqueness_of :start_time }
  it { should validate_uniqueness_of :end_time }
end
