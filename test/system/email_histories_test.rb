require "application_system_test_case"

class EmailHistoriesTest < ApplicationSystemTestCase
  setup do
    @email_history = email_histories(:one)
  end

  test "visiting the index" do
    visit email_histories_url
    assert_selector "h1", text: "Email histories"
  end

  test "should create email history" do
    visit email_histories_url
    click_on "New email history"

    fill_in "Body", with: @email_history.body
    fill_in "Receiver", with: @email_history.receiver
    fill_in "Subject", with: @email_history.subject
    click_on "Create Email history"

    assert_text "Email history was successfully created"
    click_on "Back"
  end

  test "should update Email history" do
    visit email_history_url(@email_history)
    click_on "Edit this email history", match: :first

    fill_in "Body", with: @email_history.body
    fill_in "Receiver", with: @email_history.receiver
    fill_in "Subject", with: @email_history.subject
    click_on "Update Email history"

    assert_text "Email history was successfully updated"
    click_on "Back"
  end

  test "should destroy Email history" do
    visit email_history_url(@email_history)
    click_on "Destroy this email history", match: :first

    assert_text "Email history was successfully destroyed"
  end
end
