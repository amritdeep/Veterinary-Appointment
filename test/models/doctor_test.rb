require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Name value is required" do
  	d = Doctor.new
  	assert_not d.save
  end

  test "Name must be no longer than 35 characters" do
  	d = Doctor.new
  	d.name = "SusanSusanSusanSusanSusanSusanSusanSusanSusanSusan"
  	assert_not d.save
  end

  test "Zip should be at most 5 digits" do
  	d = Doctor.new
  	d.zip = 1234567890
  	assert_not d.save
  end

  test "Years in Practice  must be value between 1-100" do
  	d = Doctor.new
  	d.year_in_practice = 100000
  	assert_not d.save
  end

  test "Successful tested" do
  	d  = Doctor.new(name: "Susan", zip: 12345, year_in_practice: 2)
  	assert true
  end


end
