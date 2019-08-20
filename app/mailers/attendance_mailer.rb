class AttendanceMailer < ApplicationMailer
	 
	 default from: 'no-reply@monsite.fr'
 
  def thank_email(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user

@attendance = attendance 
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://theevents.herokuapp.com' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to:@attendance.stripe_customer_id, subject: 'Remerciement pour la participation') 
  end
end
