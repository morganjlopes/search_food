class AgencyMailer < ActionMailer::Base
  default from: "no-reply@acfb.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.agency_mailer.new_volunteer.subject
  #
  def new_volunteer(volunteer)
    @greeting = "Hi"
    @volunteer = volunteer
    @users     = volunteer.agency.users

    mail to: Proc.new { @users.pluck(:email) }
  end
end
