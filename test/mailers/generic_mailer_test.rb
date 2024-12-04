require "test_helper"

class GenericMailerTest < ActionMailer::TestCase
  test "custom_email" do
    mail = GenericMailer.custom_email
    assert_equal "Custom email", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
