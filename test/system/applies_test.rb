require "application_system_test_case"

class AppliesTest < ApplicationSystemTestCase
  setup do
    @apply = applies(:one)
  end

  test "visiting the index" do
    visit applies_url
    assert_selector "h1", text: "Applies"
  end

  test "creating a Apply" do
    visit applies_url
    click_on "New Apply"

    fill_in "Contact-no", with: @apply.contact-no
    fill_in "Expected-salary", with: @apply.expected-salary
    fill_in "Experience", with: @apply.experience
    fill_in "Name", with: @apply.name
    click_on "Create Apply"

    assert_text "Apply was successfully created"
    click_on "Back"
  end

  test "updating a Apply" do
    visit applies_url
    click_on "Edit", match: :first

    fill_in "Contact-no", with: @apply.contact-no
    fill_in "Expected-salary", with: @apply.expected-salary
    fill_in "Experience", with: @apply.experience
    fill_in "Name", with: @apply.name
    click_on "Update Apply"

    assert_text "Apply was successfully updated"
    click_on "Back"
  end

  test "destroying a Apply" do
    visit applies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apply was successfully destroyed"
  end
end
