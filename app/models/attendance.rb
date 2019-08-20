class Attendance < ApplicationRecord
	belongs_to :event
	belongs_to :participant, class_name: "User"
	after_create :thank_send

  def thank_send
    AttendanceMailer.thank_email(self).deliver_now
  end
end
