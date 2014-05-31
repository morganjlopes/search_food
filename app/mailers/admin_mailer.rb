class AdminMailer < ActionMailer::Base
  default from: "no-reply@acfb.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.new_agency.subject
  #
  def new_agency(agency)
    @greeting = "Aloha!"
    @agency = agency

    mail to: "someone_to_update_later@acfb.org"
  end
end
