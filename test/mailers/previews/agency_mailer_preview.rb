# Preview all emails at http://localhost:3000/rails/mailers/agency_mailer
class AgencyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/agency_mailer/new_volunteer
  def new_volunteer
    AgencyMailer.new_volunteer
  end

end
