require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "should create game" do
    visit games_url
    click_on "New game"

    check "Active" if @game.active
    fill_in "Console", with: @game.console_id
    fill_in "Extra", with: @game.extra
    fill_in "Name", with: @game.name
    fill_in "Plataform", with: @game.plataform_id
    fill_in "Region", with: @game.region_id
    fill_in "Tester", with: @game.tester
    fill_in "Work", with: @game.work_id
    fill_in "Youtube", with: @game.youtube
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "should update Game" do
    visit game_url(@game)
    click_on "Edit this game", match: :first

    check "Active" if @game.active
    fill_in "Console", with: @game.console_id
    fill_in "Extra", with: @game.extra
    fill_in "Name", with: @game.name
    fill_in "Plataform", with: @game.plataform_id
    fill_in "Region", with: @game.region_id
    fill_in "Tester", with: @game.tester
    fill_in "Work", with: @game.work_id
    fill_in "Youtube", with: @game.youtube
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "should destroy Game" do
    visit game_url(@game)
    click_on "Destroy this game", match: :first

    assert_text "Game was successfully destroyed"
  end
end
