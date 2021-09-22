require "application_system_test_case"

class WeightHistory2sTest < ApplicationSystemTestCase
  setup do
    @weight_history2 = weight_history2s(:one)
  end

  test "visiting the index" do
    visit weight_history2s_url
    assert_selector "h1", text: "Weight History2s"
  end

  test "creating a Weight history2" do
    visit weight_history2s_url
    click_on "New Weight History2"

    fill_in "Memo", with: @weight_history2.memo
    fill_in "User", with: @weight_history2.user_id
    fill_in "Weight", with: @weight_history2.weight
    click_on "Create Weight history2"

    assert_text "Weight history2 was successfully created"
    click_on "Back"
  end

  test "updating a Weight history2" do
    visit weight_history2s_url
    click_on "Edit", match: :first

    fill_in "Memo", with: @weight_history2.memo
    fill_in "User", with: @weight_history2.user_id
    fill_in "Weight", with: @weight_history2.weight
    click_on "Update Weight history2"

    assert_text "Weight history2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Weight history2" do
    visit weight_history2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weight history2 was successfully destroyed"
  end
end
