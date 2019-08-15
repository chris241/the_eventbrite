class AttendanceMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'
 
  def attendance_email(user)
    
    @user = user 

    
    @url  = 'http://monsite.fr/login' 

    
    mail(to: @user.email, subject: 'Attendance Event') 
  end
end
