require 'test_helper'

class AdminMailerTest < ActionMailer::TestCase
  test "new_agency" do
    mail = AdminMailer.new_agency
    assert_equal "New agency", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
